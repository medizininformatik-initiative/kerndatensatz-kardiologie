ValueSet: MII_VS_Kardio_EKG_Metadaten
Id: mii-vs-kardio-ekg-metadaten
Title: "MII VS Kardio EKG Metadaten"
Description: "ISO/IEEE 11073-10101 Codes für EKG Metadaten"

* insert PR_CS_VS_Version
* insert Publisher

* ^status = #draft
* ^experimental = true
* ^date = "2025-07-17"

* include codes from system $mdc where partition = "2"
* include codes from system $mdc where partition = "10"