ValueSet: MII_VS_Kardio_NYHA_Klassen_SNOMED
Id: mii-vs-kardio-nyha-klassen-snomed
Title: "MII_VS_Kardio_NYHA_Klassen_SNOMED"
Description: "Klassen der New York Heart Association Classification"

* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-nyha-klassen-snomed"
//* insert PR_CS_VS_Version
//* insert Publisher //via rulesets TODO
* ^publisher = "https://www.medizininformatik-initiative.de"
* ^status = #active
* ^experimental = true
* ^date = "2025-03-05"
//* ^version = "1.0"
//* ^purpose = "."
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement."

// NYHA-Klassen
* $sct#420300004 "New York Heart Association Classification - Class I"
* $sct#421704003 "New York Heart Association Classification - Class II"
* $sct#420913000 "New York Heart Association Classification - Class III"
* $sct#422293003 "New York Heart Association Classification - Class IV"
//* include codes from system $sct where concept in $sct#421518007 "New York Heart Classification finding"