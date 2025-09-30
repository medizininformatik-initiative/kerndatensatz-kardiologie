ValueSet: MII_VS_Kardio_EKG_Prozedur_SNOMEDCT
Id: mii-vs-kardio-ekg-prozedur-snomedct
Title: "MII VS Kardio EKG Prozedur [SNOMED CT]"
Description: "SNOMED CT Codes für verschieden EKG-Prozeduren."

* insert PR_CS_VS_Version
* insert Publisher

* ^status = #draft
* ^experimental = true
* ^date = "2025-09-30"

* include codes from system $sct where concept is-a #29303009 // Electrocardiographic procedure (procedure)