"""Generate ConceptMap FSH (input/fsh/maps/*.fsh) from the mapping CSVs in this folder.

Each CSV is named <LogicalModel>-<profile-id>.csv and has the columns
sourceCode, sourceDisplay, relationship, targetCode, targetDisplay, comment.
Edit the CSV and rerun: python mappings/generate-conceptmaps.py
"""
import csv
import pathlib
import re

ROOT = pathlib.Path(__file__).resolve().parent.parent
CONFIG = (ROOT / "sushi-config.yaml").read_text(encoding="utf-8")
CANONICAL = re.search(r"^canonical:\s*(\S+)", CONFIG, re.M).group(1)
OUT = ROOT / "input" / "fsh" / "maps"


def arg(text):
    # RuleSet parameters: escape commas and closing parentheses; double quotes end the FSH string
    return text.replace("\\", "\\\\").replace(",", "\\,").replace(")", "\\)").replace('"', "'")


def generate(path):
    model, profile = path.stem.split("-", 1)
    map_id = f"map-{profile}"
    rows = list(csv.DictReader(path.open(encoding="utf-8")))
    lines = [
        f"// Generated from mappings/{path.name} - do not edit, regenerate with: python mappings/generate-conceptmaps.py",
        f"Instance: {map_id}",
        "InstanceOf: ConceptMap",
        "Usage: #definition",
        f'Title: "{model} to {profile} mapping"',
        f'Description: "Mapping from the {model} logical model to the {profile} profile"',
        f'* url = "{CANONICAL}/ConceptMap/{map_id}"',
        f'* name = "{"".join(p.capitalize() for p in map_id.split("-"))}"',
        "* status = #draft",
        "* experimental = false",
        "* group[+]",
        f'  * source = "{CANONICAL}/StructureDefinition/{model}"',
        f'  * target = "{CANONICAL}/StructureDefinition/{profile}"',
    ]
    for r in rows:
        if r["relationship"] == "unmatched":
            lines.append(f"  * insert ConceptMapElementUnmatched({arg(r['sourceCode'])}, {arg(r['sourceDisplay'])}, {arg(r['comment'])})")
        else:
            common = f"{arg(r['sourceCode'])}, {arg(r['sourceDisplay'])}, {arg(r['targetCode'])}, {arg(r['targetDisplay'])}, {r['relationship']}"
            if r["comment"]:
                lines.append(f"  * insert ConceptMapElementWithComment({common}, {arg(r['comment'])})")
            else:
                lines.append(f"  * insert ConceptMapElement({common})")
    OUT.mkdir(parents=True, exist_ok=True)
    (OUT / f"{map_id}.fsh").write_text("\n".join(lines) + "\n", encoding="utf-8", newline="\r\n")
    print(f"{path.name} -> input/fsh/maps/{map_id}.fsh ({len(rows)} rows)")


for csv_path in sorted(pathlib.Path(__file__).resolve().parent.glob("*.csv")):
    generate(csv_path)
