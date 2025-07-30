ValueSet: MII_VS_Kardio_MDC_Metriken_EKG_Annotationen
Id: mii-vs-kardio-ekg-mdc-metriken-ekg-annotationen
Title: "MII VS Kardio MDC Metriken EKG Annotationen"
Description: "ISO/IEEE 11073 Codes für Metriken (Part 2) und EKG Annotationen (Part 10)"

* insert PR_CS_VS_Version
* insert Publisher

* ^status = #draft
* ^experimental = true
* ^date = "2025-07-30"

* include codes from system $mdc where partition = "2"
* include codes from system $mdc where partition = "10"