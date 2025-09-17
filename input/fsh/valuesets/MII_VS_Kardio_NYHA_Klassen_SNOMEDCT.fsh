ValueSet: MII_VS_Kardio_NYHA_Klassen_SNOMEDCT
Id: mii-vs-kardio-nyha-klassen-snomedct
Title: "MII VS Kardio NYHA Klassen [SNOMED CT]"
Description: "Klassen der New York Heart Association Classification"

* insert PR_CS_VS_Version
* insert Publisher

* ^status = #active
* ^experimental = false
* ^date = "2025-09-05"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement."

// NYHA-Klassen
// * $sct#420300004 "New York Heart Association Classification - Class I"
// * $sct#421704003 "New York Heart Association Classification - Class II"
// * $sct#420913000 "New York Heart Association Classification - Class III"
// * $sct#422293003 "New York Heart Association Classification - Class IV"
* include codes from system $sct where concept descendent-of $sct#421518007 // New York Heart Classification finding (finding)