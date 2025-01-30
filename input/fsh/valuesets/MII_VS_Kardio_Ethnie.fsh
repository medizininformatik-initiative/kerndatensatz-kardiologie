ValueSet: MII_VS_Kardio_Ethnie
Id: mii-vs-kardio-ethnie

Title: "MII VS Kardio Ethnie"
Description: "SNOMED CT Codes für die Ethie im Kerndatensatz Kardiologie"

* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-kardio/ValueSet/Ethnie"
//* insert PR_CS_VS_Version
//* insert Publisher //via rulesets
* ^status = #draft
* ^experimental = true
* ^date = "2025-01-30"
* ^version = "0.0.1"

* $sct#14045001 "Caucasian"
* $sct#15086000 "African American"
// Noch ein Code für Andere
// Vielleicht:
// * $null-flavor#OTH "other"