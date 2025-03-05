ValueSet: MII_VS_Kardio_NYHA_Klassen
Id: mii-vs-kardio-nyha-klassen

Title: "MII VS Kardio NYHA Klassen"
Description: "Klassen der New York Heart Association Classification"

* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/NYHA-Klassen"
//* insert PR_CS_VS_Version
//* insert Publisher //via rulesets TODO
* ^publisher = "https://www.medizininformatik-initiative.de"
* ^status = #draft
* ^experimental = true
* ^date = "2025-03-05"
* ^version = "0.0.1"
//* ^purpose = "."
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement."

// Filtern, auswählen von Codes
// Einzelne Codes 
  //* include codes from system http://www.whocc.no/atc
  //* $atc#C10BA01 "Lovastatin und Nicotinsäure"
// Gruppe hierarchischer Codes via in/is-a/=/!=:
  //* include codes from system http://snomed.info/sct where concept in||is-a http://snomed.info/sct#123456
  // Mit "in" statt "is-a" haben wir im Simplifier den Text "Include codes from SNOMED_CT where concept In 256277009"
// Filter
  // * include codes from system http://loinc.org where display matches '.*blood.*'

// Allergene Antibiotika
* $sct#420300004 "New York Heart Association Classification - Class I"
* $sct#421704003 "New York Heart Association Classification - Class II"
* $sct#420913000 "New York Heart Association Classification - Class III"
* $sct#422293003 "New York Heart Association Classification - Class IV"
* include codes from system $sct where concept in $sct#421518007 "New York Heart Classification finding"