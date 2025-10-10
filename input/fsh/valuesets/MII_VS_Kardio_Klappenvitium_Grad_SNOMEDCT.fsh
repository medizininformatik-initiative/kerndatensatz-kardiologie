ValueSet: MII_VS_Kardio_Klappenvitium_Grad_SNOMEDCT
Id: mii-vs-kardio-klappenvitium-grad-snomedct
Title: "MII VS Kardio Klappenvitium Grad [SNOMED CT]"
Description: "SNOMED CT Codes für den Grad Klappenerkrankungen"

* insert PR_CS_VS_Version
* insert Publisher

* ^status = #active
* ^experimental = true
* ^date = "2025-09-18"

* include codes from system $sct where concept descendent-of #1157272001 //  Numeric grade on a scale of 1 to 4 (qualifier value)
* include codes from system $sct where concept descendent-of #422892001 //  Numeric grade on a scale of 1 to 3 (qualifier value)