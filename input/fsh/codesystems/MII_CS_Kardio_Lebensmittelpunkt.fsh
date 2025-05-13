CodeSystem: MII_CS_Kardio_Lebensmittelpunkt
Id: mii-cs-kardio-lebensmittelpunkt
Title: "CodeSystem - Lebensmittelpunkt"
Description: "Lebensmittelpunkt des Patienten"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/Lebensmittelpunkt"
* ^status = #draft
* ^experimental = true
* ^date = "2025-01-30"
* insert PR_CS_VS_Version
* insert Publisher
* ^purpose = "Dieses Code System bildet die aktuellen Lebensmittelpunkt des Patienten unabhängig von seiner Herkunft ab. Damit wird der Parameter 'Geographic region' des SMART-REACH-Scores mit der Ergänzung Deutschland abgebildet."
* ^caseSensitive = true
* ^valueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/Lebensmittelpunkt"
* ^content = #complete

* #276 "Deutschland"
* #528 "Niederlande"
* #155 "Westeuropa"
* #021 "Nordamerika"
* #AO "Anderer Ort"