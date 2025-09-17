ValueSet: MII_VS_Kardio_Metriken_EKG_Annotationen_MDC
Id: mii-vs-kardio-metriken-ekg-annotationen-mdc
Title: "MII VS Kardio Metriken EKG Annotationen [MDC]"
Description: "ISO/IEEE 11073 Codes für Metriken (Part 2) und EKG Annotationen (Part 10)"

* insert PR_CS_VS_Version
* insert Publisher

* ^status = #draft
* ^experimental = true
* ^date = "2025-07-30"

* include codes from system $mdc where partition = "2"
* include codes from system $mdc where partition = "10"