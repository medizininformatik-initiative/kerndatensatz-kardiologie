Instance: mii-exa-kardio-embolischer-gefaessverschluss
InstanceOf: MII_PR_Kardio_Diagnose
Title: "MII EXA Kardio Emoblischer Gefäßverschluss"
Description: "Beispiel: Der Patient hat angegeben, einen embolischen Gefäßverschluss gehabt zu haben."
Usage: #example

// --------------------------------------
// CATEGORY (problem-list-item)
* category = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item "Problem List Item"

// --------------------------------------
// CODE (ICD10-GM & SNOMED --> hier local kardio vs)
* code.coding[kardio] = $example-ath-ereignis#eg-cv "Embolischer Gefäßverschluss cerebro-vaskulär"

// --------------------------------------
// SEVERITY (terminal) --> Angabe fuer Krebserkrankung nicht im Endstadium/terminal
* severity.coding = $example-sct#6736007 "Moderate"

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
* verificationStatus = $example-condition-ver-status#confirmed "Confirmed"

// --------------------------------------
// EXTENSION: Feststellungsdatum
* extension[Feststellungsdatum].url = "http://hl7.org/fhir/StructureDefinition/condition-assertedDate"
* extension[Feststellungsdatum].valueDateTime = "2025-02-02"

// --------------------------------------
// Recorded DATE
* recordedDate = "2025-02-02"

// --------------------------------------
// ONSET DATE (Symptombeginn)
* onsetDateTime = "2024-11-05"