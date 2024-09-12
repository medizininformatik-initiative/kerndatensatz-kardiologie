ValueSet: MII_VS_Labor_VSExample
Id: mii-vs-kardio-vsexample
Title: "MII VS Kardio VSExample"
Description: "Beschreibung."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-kardio/ValueSet/VSExample"
//* insert PR_CS_VS_Version
//* insert Publisher //via rulesets
* ^status = #active
* ^experimental = false
* ^date = "2023-12-12"
* $loinc#18717-9 "BLOOD BANK STUDIES"
* $loinc#18718-7 "CELL MARKER STUDIES"
* $loinc#18719-5 "CHEMISTRY STUDIES"
* $loinc#18720-3 "COAGULATION STUDIES"