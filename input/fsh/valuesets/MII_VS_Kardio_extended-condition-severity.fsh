ValueSet: Extended_Condition_Severity
Id: extended-condition-severity
Title: "Extended Condition Severity"
Description: "An extended ValueSet including standard condition severity and SNOMED CT code 42796001 (End-stage)"
* ^status = #active

//* include valueSet http://hl7.org/fhir/ValueSet/condition-severity //<-- cant include codes from valueSet; use codeSystem instead
//* include codes from system $sct where code = #42796001
* include codes from system http://snomed.info/sct where code = #24484000 // Severe
* include codes from system http://snomed.info/sct where code = #6736007  // Moderate
* include codes from system http://snomed.info/sct where code = #255604002 // Mild
* include codes from system http://snomed.info/sct where code = #42796001 // End-stage //<--- value that is extended