ValueSet: MII_VS_Kardio_Klappenvitium_SNOMEDCT
Id: mii-vs-kardio-klappenvitium-snomedct
Title: "MII VS Kardio Klappenvitium [SNOMED CT]"
Description: "SNOMED CT Codes für Klappenerkrankungen"

* insert PR_CS_VS_Version
* insert Publisher

* ^status = #draft
* ^experimental = true
* ^date = "2025-09-16"

* include codes from system $sct where concept is-a $sct#368009 // "Heart valve disorder (disorder)"