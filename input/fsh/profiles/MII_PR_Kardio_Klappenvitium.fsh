Profile: MII_PR_Kardio_Klappenvitium
Id: mii-pr-kardio-klappenvitium
Parent: MII_PR_Diagnose_Condition
Title: "MII PR Kardio Klappenvitium"
Description: "Profil zur Abbildung einer Herzklappenerkrankung."

* insert PR_CS_VS_Version
* insert Publisher

* ^status = #draft
* ^experimental = true
* ^date = "2025-09-16"

* severity MS
* severity from MII_VS_Kardio_Extended_Condition_Severity_SNOMEDCT (preferred)
* severity ^comment = "Extended valueSet to allow value'terminal'/'end-stage' as additional information for a given cancer diagnosis."

* code.coding[icd10-gm] from MII_VS_Kardio_Klappenvitium_ICD (required)
* code.coding[sct] from MII_VS_Kardio_Klappenvitium_SNOMEDCT (required)

// Subject
* subject only Reference(Patient)

* recorder MS
* asserter MS