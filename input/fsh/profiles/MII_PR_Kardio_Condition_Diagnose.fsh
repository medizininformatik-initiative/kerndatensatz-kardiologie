Profile: MII_PR_Kardio_Condition_Diagnose
Id: mii-pr-kardio-condition-diagnose
Parent: MII_PR_Diagnose_Condition // oder von MII_PR_Symptom_Condition //oder von FHIR "Base" Condition
// Diagnose eher Fallbezogen
// Symptom erlaubt differenziertere Angabe --> Julian Saß fragen

Title: "MII PR Kardio Diagnose"
Description: "Profil zur Abbildung einer Diagnose im Kontext des Projekts Acribis."

* category 1..1 MS
* category.coding.system 1..1 MS
* category.coding.system = $condition-category (exactly)
* category.coding.code 1..1 MS
* category.coding.code = $condition-category#problem-list-item (exactly)
* asserter 1..1 MS

// Feststellungsdatum oder assertedDate soll angegeben werden wenn vorhanden
* extension[Feststellungsdatum] MS

// CODE:
// Anmerkung: Diagnose-Codes sind in Basismodul Diagnose, aber nicht in Symptom-Diagnose 
// Code als ICD 10 GM angebbar --> Code --> EXAMPLE System ICD10GM o.ä.

* verificationStatus 1..1 MS
* verificationStatus.extension contains http://hl7.org/fhir/StructureDefinition/data-absent-reason named dataAbsentReason 0..1
// TODO Julian Saß fragen!

// MÖGLICHKEIT 1 - Data Absent Reason mit Mapping im IG
// Data Absent Reason für verificationStatus 1..1
  // confirmed = Arzt bestätigt
  // unconfirmed = Angabe des Patienten in Fragebogen
  // Data Absent unknown = unbekannt
  // Data Absent asked-unknown = patient weiß nicht

// MÖGLICHKEIT 2 - Extension mit VS
// ---> Alternativ: Extension für Ja/Nein/Unbekannt/Weiß nicht --> http://terminology.hl7.org/CodeSystem/v2-0532 
// ----> Extension: Anamnese_Antwort_Extension

// MÖGLICHKEIT 3 - SNOMED CODE zu verficiationStatus
// Diagnose aus Gecco, bei der die Angabe eines SNOMED-Codes verpflictend für verficationStatus ist
// GECCO-Diagnose (Condition): https://simplifier.net/guide/GermanCoronaConsensusDataSet-ImplementationGuide/Home/GECCOCore/AnamnesisRiskfactors/Disordersofcardiovascularsystem.guide.md?version=current