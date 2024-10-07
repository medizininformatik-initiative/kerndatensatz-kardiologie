// First Draft
Profile: MII_PR_Kardio_MedicationStatement
Id: mii-pr-kardio-medicationstatement
Parent: MII_PR_Medikation_MedicationStatement //MedicationStatement

//Vererbung siehe:
// https://simplifier.net/MII-Basismodul-Medikation-2024/MII_PR_Medikation_MedicationStatement/~overview (MII KDS Medikation)
// > fhir install de.medizininformatikinitiative.kerndatensatz.medikation: 2.0.0
// https://simplifier.net/packages/hl7.fhir.r4.core/4.0.1/files/80817 (FHIR Core R4 MedicationStatement)

Title: "MII PR Kardio MedicationStatement"
Description: "Erster Draft eines Profils zur Abbildung einer Medikation nach Angabe des Patienten oder Arztes."

// Unterscheidung, ob ärztliche Angabe oder Angabe aus Patientenfragebogen o.ä.
* informationSource 1..1 MS
* derivedFrom 1..1 MS //e.g. questionareResponse, what would be the normal reference/source?

// ValueSet für Medikamente/ATC-Codes (kardio-spezifisch)? Es existiert bereits ein Binding auf ATC.
// Ergibt eine Einschränkung im Profil hier überhaupt Sinn (aus Gesamt-Kardio-Sicht vs Acribis..?
* medicationReference 0..0   //oder definieren wir KDS_Kardio_Medication sodass es best. Kodierung enthält?
* medicationCodeableConcept.coding[atcClassDe] 1..1 //PZN oder ATC? --> Medication[x] ist bereits 1..1

//Dosage?