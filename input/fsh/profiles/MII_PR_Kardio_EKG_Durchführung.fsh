Profile: MII_PR_Kardio_EKG_Durchfuehrung
Id: mii-pr-kardio-ekg-durchfuehrung
Parent: MII_PR_Prozedur_Procedure
Title: "MII PR Kardio EKG Durchführung"
Description: "Profil zur Erfassung der Durchführung eines EKG."

* insert PR_CS_VS_Version
* insert Publisher

* ^status = #draft
* ^experimental = true
* ^date = "2025-07-30"

* category.coding[sct] = $sct#165197003 // Diagnostic assessment (procedure)

* code.coding[sct] from MII_VS_Kardio_EKG_Prozedur_SNOMEDCT (required)

* bodySite = $sct#80891009 // Heart structure (body structure)

* usedReference 1.. MS
* usedReference only Reference(Device)