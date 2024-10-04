// First Draft
Profile: MII_PR_Kardio_MedicationStatement
Id: mii-pr-kardio-medicationstatement
Parent: MII_PR_Medikation_MedicationStatement //MedicationStatement

//Vererbung siehe:
// https://simplifier.net/MII-Basismodul-Medikation-2024/MII_PR_Medikation_MedicationStatement/~overview (MII KDS Medikation)
// > fhir install de.medizininformatikinitiative.kerndatensatz.diagnose 2024.0.0
// https://simplifier.net/packages/hl7.fhir.r4.core/4.0.1/files/80817 (FHIR Core R4 MedicationStatement)

Title: "MII PR Kardio MedicationStatement"
Description: "Erster Draft eines Profils zur Abbildung einer Medikation nach Angabe des Patienten oder Arztes."

* informationSource 1..1 MS
* derivedFrom 1..1 MS //e.g. questionareResponse or what would be the normal reference/source?

//ValueSet für Medikamente/ATC-Codes (kardio-spezifisch)

//Dosage?