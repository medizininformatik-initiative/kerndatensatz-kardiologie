ValueSet: MII_VS_Kardio_Lebensmittelpunkt_m49
Id: mii-vs-kardio-lebensmittelpunkt-m49
Title: "MII_VS_Kardio_Lebensmittelpunkt_m49"
* insert PR_CS_VS_Version
* insert Publisher
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-lebensmittelpunkt"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-03-03"
* ^purpose = "Dieses Value Set bildet den aktuellen Lebensmittelpunkt des Patienten unabhängig von seiner Herkunft ab. Damit wird der Parameter 'Geographic region' des SMART-REACH-Scores mit der Ergänzung Deutschland abgebildet."

* $m49-geographic-region#528 "Netherlands (Kingdom of the)"
* $m49-geographic-region#276 "Germany"
* $m49-geographic-region#155 "Western Europe"
* $m49-geographic-region#021 "Northern America"

* include codes from system $m49-geographic-region