// First Draft
Profile: MII_PR_Kardio_Laboruntersuchung
Id: mii-pr-kardio-laboruntersuchung
Parent: ProfileObservationLaboruntersuchung //2023 //MII_PR_Labor_Laboruntersuchung(2024) //Observation(Fhir Core)
// This profile leads to an error when compiling due to the package KDS Labor 1.0.6 not containing snapshots and not being inflated properly by firely..


//Vererbung siehe:
// https://simplifier.net/mii-basismodul-labor-2024/MII_PR_Labor_Laboruntersuchung/~overview (MII KDS Labor)
// > fhir install de.medizininformatikinitiative.kerndatensatz.laborbefund 1.0.6
// https://simplifier.net/packages/hl7.fhir.r4.core/4.0.1/files/83132 (FHIR Core R4 Observation)

Title: "MII PR Kardio Laboruntersuchung"
Description: "Erster Draft eines Profils zur Abbildung eines Laborergebnisses."

* value 1..1