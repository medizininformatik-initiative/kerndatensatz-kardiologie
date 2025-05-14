ValueSet: MII_VS_Kardio_Geraeteprogrammierung
Id: mii-vs-kardio-geraeteprogrammierung
Title: "MII VS Kardio Geräteprogrammierung"
Description: "Dieses Value Set bildet die Programmierung eines implantierten Gerätes in der Kardiologie ab.
Dazu werden Codes der ISO/IEEE 11073-10101 Nomenclature verwendetd."

* ^version = "0.1.0"
* ^status = #draft
* ^experimental = true
* ^date = "2025-05-14"
* ^publisher = "Medizininformatik Initative"
* ^purpose = "Mit Codes aus diesem Valueset soll abgebildet werden, ob es sich um einen AAI-, VVI- oder DDD-Schrittmacher handelt, falls das bekannt ist."

* $mdc#754753 "MDC_IDC_ENUM_BRADY_MODE_AAI"
* $mdc#754773 "MDC_IDC_ENUM_BRADY_MODE_VVI"
* $mdc#754760 "MDC_IDC_ENUM_BRADY_MODE_DDD"
* $mdc#754790 "MDC_IDC_ENUM_BRADY_MODE_Unknown"