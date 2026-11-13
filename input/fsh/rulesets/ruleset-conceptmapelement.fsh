// Rulesets for logical model -> profile mappings (ConceptMap), used by input/fsh/maps/*.fsh generated from mappings/*.csv
RuleSet: ConceptMapElement(sourceCode, sourceDisplay, targetCode, targetDisplay, relationship)
* element[+]
  * code = #{sourceCode}
  * display = "{sourceDisplay}"
  * target[+]
    * code = #{targetCode}
    * display = "{targetDisplay}"
    * equivalence = #{relationship}

RuleSet: ConceptMapElementWithComment(sourceCode, sourceDisplay, targetCode, targetDisplay, relationship, comment)
* element[+]
  * code = #{sourceCode}
  * display = "{sourceDisplay}"
  * target[+]
    * code = #{targetCode}
    * display = "{targetDisplay}"
    * equivalence = #{relationship}
    * comment = "{comment}"

RuleSet: ConceptMapElementUnmatched(sourceCode, sourceDisplay, comment)
* element[+]
  * code = #{sourceCode}
  * display = "{sourceDisplay}"
  * target[+]
    * equivalence = #unmatched
    * comment = "{comment}"
