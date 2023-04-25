Extension: BeExtProblemOriginType
Id: be-ext-problem-origin-type
Title: "BeExtProblemOriginType"
Description: "The type of event that triggers the problem to be evaluated - whether the problem was reported from a referring GP, etc..."
* value[x] only code
* valueCode 0..1
* valueCode from BeVSProblemOriginType (required)
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 1
* ^context.type = #element
* ^context.expression = "Condition"
