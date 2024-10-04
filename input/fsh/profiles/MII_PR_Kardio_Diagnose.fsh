// First Draft
Profile: MII_PR_Kardio_Diagnose
Id: mii-pr-kardio-diagnose
Parent: MII_PR_Diagnose_Condition //Observation

//Vererbung siehe:
// https://simplifier.net/MII-Basismodul-Diagnose-2024/MII_PR_Diagnose_Condition/~overview (MII KDS Diagnose)
// > fhir install de.medizininformatikinitiative.kerndatensatz.diagnose 2024.0.0
// https://simplifier.net/packages/hl7.fhir.r4.core/4.0.1/files/82200 (FHIR Core R4 Condition)

Title: "MII PR Kardio Diagnose"
Description: "Erster Draft eines Profils zur Abbildung einer Diagnose auf Basis von Angaben des Arztes oder Patienten (Asserter)."

* asserter 1..1 MS