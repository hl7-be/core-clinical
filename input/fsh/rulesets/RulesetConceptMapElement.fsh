// Rulesets for creating ConceptMap elements that map a logical model element
// onto an element (or extension) of a profile in this IG.
// The ConceptMap instances themselves are generated from the CSV files in
// /mappings by mappings/generate-conceptmaps.py - edit the CSV, not the FSH.

RuleSet: ConceptMapElement(sourceCode, sourceDisplay, targetCode, targetDisplay, relationship, comment)
* element[+]
  * code = #"{sourceCode}"
  * display = "{sourceDisplay}"
  * target[+]
    * code = #"{targetCode}"
    * display = "{targetDisplay}"
    * equivalence = #{relationship}
    * comment = "{comment}"

// For model elements that have no target in the profile (yet).
RuleSet: ConceptMapElementUnmapped(sourceCode, sourceDisplay, comment)
* element[+]
  * code = #"{sourceCode}"
  * display = "{sourceDisplay}"
  * target[+]
    * equivalence = #unmatched
    * comment = "{comment}"
