ValueSet: MII_VS_Kardio_Geraeteprogrammierung_MDC
Id: mii-vs-kardio-geraeteprogrammierung-mdc
Title: "MII VS Kardio Geräteprogrammierung [MDC]"
Description: "Dieses Value Set bildet die Programmierung eines implantierten Gerätes in der Kardiologie ab.
Dazu werden Codes der ISO/IEEE 11073-10101 Nomenclature verwendetd."

* insert PR_CS_VS_Version
* insert Publisher

* ^status = #draft
* ^experimental = true
* ^date = "2025-05-14"
* ^purpose = "Mit Codes aus diesem Valueset soll abgebildet werden, ob es sich um einen AAI-, VVI- oder DDD-Schrittmacher handelt, falls das bekannt ist."

* $mdc#754753 // MDC_IDC_ENUM_BRADY_MODE_AAI
* $mdc#754773 // MDC_IDC_ENUM_BRADY_MODE_VVI
* $mdc#754760 // MDC_IDC_ENUM_BRADY_MODE_DDD
* $mdc#754790 // MDC_IDC_ENUM_BRADY_MODE_Unknown