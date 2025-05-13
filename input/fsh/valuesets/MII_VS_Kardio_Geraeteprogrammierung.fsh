ValueSet: MII_VS_Kardio_Geraeteprogrammierung
Id: mii-vs-kardio-geraeteprogrammierung
Title: "MII VS Kardio Geräteprogrammierung"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-geraeteprogrammierung"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-05-13"
* ^publisher = "Medizininformatik Initative"
* ^purpose = "Dieses Value Set bildet die Programmierung eines implantierten Gerätes in der Kardiologie ab."

* $mdc#754753 "MDC_IDC_ENUM_BRADY_MODE_AAI"
* $mdc#754773 "MDC_IDC_ENUM_BRADY_MODE_VVI"
* $mdc#754760 "MDC_IDC_ENUM_BRADY_MODE_DDD"
* $mdc#754790 "MDC_IDC_ENUM_BRADY_MODE_Unknown"

/*
TODO: Observation Brady Pacing Mode und VS
Der Typ soll mit einem Code aus ISO/IEEE 11073:10101 angegeben werden.
Für ACRIBiS empfehlen sich die folgenden Codes (Stand 01.05.2025):
 - **AAI-Schrittmacher**: 754753 - MDC_IDC_ENUM_BRADY_MODE_AAI
 - **VVI-Schrittmacher**: 754773 - MDC_IDC_ENUM_BRADY_MODE_VVI
 - **DDD-Schrittmacher**: 754760 - MDC_IDC_ENUM_BRADY_MODE_DDD
 - **unbekannt**: 754790 - MDC_IDC_ENUM_BRADY_MODE_Unknown"
*/