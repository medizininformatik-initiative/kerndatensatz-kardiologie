Instance: mii-exa-kardio-diagnose-myokardinfarkt
InstanceOf: MII_PR_Kardio_Diagnose
Title: "MII Kardio Diagnose Myokardinfarkt"
Description: "Beispielhafte vollständige Instanz einer Diagnose die vom Arzt bestätigt tatsächlich vorliegt gemäß dem Profil MII_PR_Kardio_Diagnose im Rahmen des ACRIBIS-Projekts."
Usage: #example

// --------------------------------------
// CATEGORY (problem-list-item)
* category = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item "Problem List Item"

// --------------------------------------
// CODE (ICD10-GM & SNOMED)
* code.coding[icd10-gm] = $icd-10-gm|2025#I21.9 "Akuter Myokardinfarkt, nicht näher bezeichnet"
* code.coding[sct] = $sct#22298006 "Myocardial infarction"

// --------------------------------------
// SEVERITY (terminal) --> Angabe fuer Krebserkrankung nicht im Endstadium/terminal
* severity.coding = $sct#6736007 "Moderate"

// --------------------------------------
// SUBJECT (Patientenreferenz)
* subject.display = "Max Mustermann"

// --------------------------------------
// RECORDER (Patient selbst hat Angabe gemacht / Patient)
* recorder.display = "Patient"

// --------------------------------------
// ASSERTER (Arzt)
* asserter.display = "Facharzt für Kardiologie"

// --------------------------------------
// VERIFICATION STATUS -> Arzt hat festgestellt, dass Diagnose wohl nicht vorliegt
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed "Confirmed"

// --------------------------------------
// EXTENSION: Feststellungsdatum --> Trifft hier nicht zu, siehe ModifierExtension, Patient gibt in Amanesefragebogen an es nicht zu wissen
* extension[Feststellungsdatum].url = "http://hl7.org/fhir/StructureDefinition/condition-assertedDate"
* extension[Feststellungsdatum].valueDateTime = "2023-11-05"

// --------------------------------------
// Recorded DATE
* recordedDate = "2025-05-13"

// --------------------------------------
// ONSET DATE (Symptombeginn)
* onsetDateTime = "2023-11-05"

// TODO: Beispiel für Krebsdiagnose erstellen