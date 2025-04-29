Profile: MII_PR_Kardio_Condition_Diagnose
Id: mii-pr-kardio-condition-diagnose
Parent: MII_PR_Diagnose_Condition // oder von MII_PR_Symptom_Condition //oder von FHIR "Base" Condition
// Diagnose eher Fallbezogen
// Symptom erlaubt differenziertere Angabe --> Julian Saß fragen

Title: "MII PR Kardio Diagnose"
Description: "Profil zur Abbildung einer Diagnose im Kontext des Projekts Acribis."

* category 1..1 MS
* category.coding.system 1..1
* category.coding.system = $condition-category (exactly)
* category.coding.code 1..1
* category.coding.code = $condition-category#problem-list-item (exactly)
* asserter 1..1 MS

// TODO aus vorheriger Condition_Observation:
// TODO Anlegen eines ValueSets mit Acribis-Diagnosen mit Codierung in ICD 10 GM
// Abstimmung in Acribis WP2 für Diskussion/Expertise durch Kliniker und Vorbereitung einer Liste für technische Implementation.
// Vorarbeiten wohl aus Wuerzburg -> siehe Acribis WP6 und Feasibility R-script: https://github.com/guenther-k/ACRIBiS_feasibility/blob/main/ACRIBiS_Feasibility_Script.R
// Value[x] --> Codeable Concept --> ja/nein/unbekannt/nicht erhoben
//* value[x] only CodeableConcept
//* valueCodeableConcept.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0532" (exactly)
//* valueCodeableConcept.coding from $mii-diagnose-vorhanden (required)

//* extension contains 
//    AnamneseAntwort 1..1 
//* extension[AnamneseAntwort].value[x] only CodeableConcept
//* extension[AnamneseAntwort].valueCodeableConcept.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0532" (exactly)
//* extension[AnamneseAntwort].valueCodeableConcept.coding = $mii-diagnose-vorhanden (required)


// TODO / To Discuss Component für ONSET-Date mit Code und Date-Value

// GECCO-Diagnose (Condition): https://simplifier.net/guide/GermanCoronaConsensusDataSet-ImplementationGuide/Home/GECCOCore/AnamnesisRiskfactors/Disordersofcardiovascularsystem.guide.md?version=current

// Informationsmodell-TMF-SP: https://tmfev.sharepoint.com/:f:/r/sites/tmf/mi-i/Taskforce%20Kerndatensatz/04_Erweiterungsmodule/Modul_Kardiologie/03%20Datensatz?csf=1&web=1&e=QhP691

//Vererbung siehe:
// https://simplifier.net/MII-Basismodul-Diagnose-2024/MII_PR_Diagnose_Condition/~overview (MII KDS Diagnose (Condition))
// > fhir install de.medizininformatikinitiative.kerndatensatz.diagnose 2024.0.0
// https://simplifier.net/packages/hl7.fhir.r4.core/4.0.1/files/82200 (FHIR Core R4 Condition)
// https://simplifier.net/packages/hl7.fhir.r4.core/4.0.1/files/83132 (FHIR Core R4 Observation)