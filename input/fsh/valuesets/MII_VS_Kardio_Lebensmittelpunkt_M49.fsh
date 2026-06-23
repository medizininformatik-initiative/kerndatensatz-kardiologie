ValueSet: MII_VS_Kardio_Lebensmittelpunkt_M49
Id: mii-vs-kardio-lebensmittelpunkt-m49
Title: "MII VS Kardio Lebensmittelpunkt [M49]"
Description: "Dieses Value Set bildet den aktuellen Lebensmittelpunkt des Patienten unabhängig von seiner Herkunft ab. Damit wird der Parameter 'Geographic region' des SMART-REACH-Scores mit der Ergänzung Deutschland abgebildet."

* insert PR_CS_VS_Version
* insert Publisher

* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-03-03"

* $m49-geographic-region#528
* $m49-geographic-region#276
* $m49-geographic-region#155
* $m49-geographic-region#021

* include codes from system $m49-geographic-region

* MII_CS_Kardio_Lebensmittelpunkt#ao