ValueSet: MII_VS_Kardio_Klappenvitium_ICD
Id: mii-vs-kardio-klappenvitium-icd
Title: "MII VS Kardio Klappenvitium [ICD 10 GM]"
Description: "ICD-Codes für Klappenerkrankungen"

* insert PR_CS_VS_Version
* insert Publisher

* ^status = #draft
* ^experimental = true
* ^date = "2025-09-16"

* include codes from system $icd-10-gm|2025 where concept descendent-of #I05 // "Rheumatische Mitralklappenkrankheiten"
* include codes from system $icd-10-gm|2025 where concept descendent-of #I06 // "Rheumatische Aortenklappenkrankheiten"
* include codes from system $icd-10-gm|2025 where concept descendent-of #I07 // "Rheumatische Trikuspidalklappenkrankheiten"
* include codes from system $icd-10-gm|2025 where concept descendent-of #I08 // "Krankheiten mehrerer Herzklappen"
* $icd-10-gm|2025#I09.8 // Sonstige näher bezeichnete rheumatische Herzkrankheiten