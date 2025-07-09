ValueSet: MII_VS_Kardio_EKG_Kanaele
Id: mii-vs-kardio-ekg-kanaele
Title: "MII VS Kardio EKG Kanäle"
Description: "ISO/IEEE 11073-10101 Codes für EKG Kanäle"

* insert PR_CS_VS_Version
* insert Publisher

* ^status = #draft
* ^experimental = true
* ^date = "2025-07-09"

* include codes from system $mdc where code regex "(13107[2-9])|(1310[89][0-9])|(1311[0-9][0-9])|(1312[0-4][0-9])|(13125[0-6])"