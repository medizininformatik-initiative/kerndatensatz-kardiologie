ValueSet: MII_VS_Kardio_Klappenvitium_ALPHAID
Id: mii-vs-kardio-klappenvitium-alphaid
Title: "MII VS Kardio Klappenvitium [ALPHA-ID]"
Description: "Alpha-ID-Codes für Klappenerkrankungen"

* insert PR_CS_VS_Version
* insert Publisher

* ^status = #active
* ^experimental = true
* ^date = "2025-09-16"

// Rheumatische Klappenerkrankungen
* include codes from system $alpha-id|2025 where icd_10_primaer in "I05.0,I05.1,I05.2,I05.8,I05.9"
* include codes from system $alpha-id|2025 where icd_10_primaer in "I06.0,I06.1,I06.2,I07.8,I06.9"
* include codes from system $alpha-id|2025 where icd_10_primaer in "I07.0,I07.1,I07.2,I07.8,I07.9"
* include codes from system $alpha-id|2025 where icd_10_primaer in "I08.0,I08.1,I08.2,I08.3,I08.8,I08.9"
* include codes from system $alpha-id|2025 where icd_10_primaer = "I09.8"

// Nicht-rheumatische Klappenerkrankungen
* include codes from system $alpha-id|2025 where icd_10_primaer in "I34.0,I34.1,I34.2,I34.8,I34.80,I34.88,I34.9"
* include codes from system $alpha-id|2025 where icd_10_primaer in "I35.0,I35.1,I35.2,I35.8,I35.9"
* include codes from system $alpha-id|2025 where icd_10_primaer in "I36.0,I36.1,I36.2,I36.8,I36.9"
* include codes from system $alpha-id|2025 where icd_10_primaer in "I37.0,I37.1,I37.2,I37.8,I37.9"