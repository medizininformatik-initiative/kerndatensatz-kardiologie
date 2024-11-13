ValueSet: MII_VS_Kardio_Diagnose_ICD10GM
Id: mii-vs-kardio-diagnose-icd10gm

Title: "MII VS Kardio Diagnose ICD-10 GM"
Description: "ICD10 GM Codes für kardiologische Erkrankungen"

* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-kardio/ValueSet/DiagnoseICD10GM"
//* insert PR_CS_VS_Version
//* insert Publisher //via rulesets
* ^status = #draft
* ^experimental = true
* ^date = "2024-11-13"
* ^version = "0.0.1"

// Filtern, auswählen von Codes
// Einzelne Codes 
  //* include codes from system http://www.whocc.no/atc
  //* $atc#C10BA01 "Lovastatin und Nicotinsäure"
// Gruppe hierarchischer Codes via in/is-a/=/!=:
  //* include codes from system http://snomed.info/sct where concept in http://snomed.info/sct#123456
// Filter
  // * include codes from system http://loinc.org where display matches ".*blood.*"

* include codes from system $CodingICD10GM where concept descendant-of #IX