Profile: MII_PR_Kardio_Klappenvitium
Id: mii-pr-kardio-klappenvitium
Parent: MII_PR_Kardio_Diagnose
Title: "MII PR Kardio Klappenvitium"
Description: "Profil zur Abbildung einer Herzklappenerkrankung."

* insert PR_CS_VS_Version
* insert Publisher

* ^status = #draft
* ^experimental = true
* ^date = "2025-09-30"

* severity from MII_VS_Kardio_Klappenvitium_Grad_SNOMEDCT (required)
* severity ^comment = "Grad der Klappenerkrankung auf einer drei- oder vierstufigen Skala."

* code.coding[icd10-gm] from MII_VS_Kardio_Klappenvitium_ICD (required)
* code.coding[sct] from MII_VS_Kardio_Klappenvitium_SNOMEDCT (required)
* code.coding[alpha-id] from MII_VS_Kardio_Klappenvitium_ALPHAID (required)
* code.coding[orphanet] ..0