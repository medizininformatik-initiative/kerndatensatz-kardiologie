Profile: MII_PR_Kardio_Diagnose
Id: mii-pr-kardio-diagnose
Parent: MII_PR_Diagnose_Condition
Title: "MII PR Kardio Diagnose"
Description: "Profil zur Abbildung einer Diagnose im Kontext des Projekts Acribis."

* insert PR_CS_VS_Version
* insert Publisher

* ^status = #draft
* ^experimental = true
* ^date = "2025-09-03"

//_________________________category
// IG: Die relevanten Diagnosen sind nicht nur die Abrechnungsrelevanten, 
//     wir nehmen auch Nebendiagnosen, ungesicherte Diagnosen etc. aka "Problem-List-Items".
* category 0..* MS
* category ^comment = "Unterscheidung zwischen Falldiagnose (encounter-diagnose) und beliebiger Diagnose (problem-list-item)."

//_________________________severity
// IG: Fuer  das Datenitem "terminale Krebserkrankung" soll abbildbar sein, ob eine erfasste Krebserkrankung Terminal ist. 
//     Falls keine gesicherte Diagnose vorhanden ist, kann statt eines ICD10-Codes ein SNOMED-Code verwendet werden.
//     Severe = 24484000; Moderate = 6736007; Mild = 255604002;
//     Terminal/End-stage = 42796001;
* severity 0..1 MS
* severity from MII_VS_Kardio_Extended_Condition_Severity_SNOMEDCT (preferred)
* severity ^comment = "Extended valueSet to allow value'terminal'/'end-stage' as additional information for a given cancer diagnosis."

// TODO: Diese Zeile wieder entfernen. Das ist nur eine temporäre Lösung, da Ontoserver sonst nicht validiert.
// * statt Version referenziert alle Versionen des ValueSets
* code.coding[icd10-gm] from http://fhir.de/ValueSet/bfarm/icd-10-gm|2025 (required)

// Subject
* subject 1..1 MS
* subject only Reference(Patient)

//_________________________Code
// IG: Grundsätzlich kann eine Diagnose oder "Problem-List-Item" als ICD10-Codes oder per SNOMED-Code angegeben werden.
//     Die Verwendung des SNOMED-Codes statt ICD10-Code bietet sich bspw. bei Verwendung von Anamnese-/Fragebogenantworten an.
//     Relevante Datenitems sind im Acribis-Datensatz 4.1.1 aufgelistet, müssen aber standortspezifisch gemappt werden.
// Fuer Acribis relevante Codes können der AcribisDS<>FHIR-Mapping-Tabelle entnommen werden. 
// Standortspezifisch können andere Codes als die dort vermerkten vorkommen.
// Einsteigspunkt fuer die an Acribis-beteiligten DIZ: https://acribis.atlassian.net/wiki/spaces/Acribis/pages/390266939/FHIR+Profile+bersicht

//_________________________recorder / asserter
// IG: Benötigt Referenz auf Person --> PracticionerRole (Doctor) und Patient  
//     Wir ermöglichen im Profil nicht validierte Informationen anhand der Herkunft kenntlich zu machen. 
//     Einige Fälle:
//       Wenn bekannt, das Angabe vom Patient kommt, dann angeben.
//       Wenn Patient Asserter, dann recorder auch Patient.
//       Wenn Patient dann verificationStatus entsprechend setzen.
//     Patient/study nurse (practicioner role) recorder --> arzt asserter = standardfall bei Patientenfragebogen
// MS, damit (bei Vorhandensein der Information) die Angabe erfolgt und das in FDPG berücksichtigt wird.
* recorder 0..1 MS
* recorder only Reference(Patient or PractitionerRole)
* recorder ^isModifier = true
* recorder ^isModifierReason = "Can express the uncertainty of a diagnosis by stating a recorder that is not authorized to define an confirmed diagnosis."
* recorder ^comment = "Allows documentation about who recorded the given information. This might be the Patient (see subject reference), a Study Nurse or a Doctor. May focus on the role (PracticionerRole-Reference) and not reference a specific person."

* asserter 0..1 MS
* asserter only Reference(Patient or PractitionerRole)
* asserter ^isModifier = true
* asserter ^isModifierReason = "Can express the uncertainty of a diagnosis by stating a asserter that is not authorized to define an confirmed diagnosis."
* asserter ^comment = "Allows documentation about who asserted the given information. This might be the Patient (see subject reference), a Study Nurse or a Doctor. May focus on the role (PracticionerRole-Reference) and not reference a specific person."

// TODO: FHIR-invariant/rule: Abgleich mit VerificationStatus --> Plausibilität/Co-constraint prüfen
* verificationStatus 0..1 MS
// * insert invariant with plausi-check

//_________________________extension-Feststellungsdatum
// Feststellungsdatum = Erstdiagnosedatum
// Feststellungsdatum oder assertedDate soll angegeben werden wenn vorhanden
* extension[Feststellungsdatum] 0..1 MS

// IG TODO beschreiben, wie man welche wege angibt

//_____________________________________________________________________________
// Instance die wir brauchen:
// Diagnose liegt vor = Ja
// Diagnose liegt nicht vor = Nein
// Diagnose ist unbekannt = Unbekannt

//_____________________________________________________________________________
Instance: Beispiel-Kardio-Condition-Diagnose-Is-Present
InstanceOf: MII_PR_Kardio_Diagnose
Title: "Beispiel Diagnose liegt vor"
Description: "Beispielhafte vollständige Instanz einer Diagnose die vom Arzt bestätigt tatsächlich vorliegt gemäß dem Profil MII_PR_Kardio_Diagnose im Rahmen des ACRIBIS-Projekts."
Usage: #example

* id = "beispiel-kardio-diagnose-liegt-vor"

// --------------------------------------
// CATEGORY (problem-list-item)
* category = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item "Problem List Item"

// --------------------------------------
// CODE (ICD10-GM & SNOMED)
* code.coding[icd10-gm] = $icd-10-gm|2025#I21.9 "Akuter Myokardinfarkt, nicht näher bezeichnet"
* code.coding[sct] = $sct#22298006 "Myocardial infarction (disorder)"

// --------------------------------------
// SEVERITY (terminal) --> Angabe fuer Krebserkrankung nicht im Endstadium/terminal
* severity.coding = $sct#6736007 "Moderate (severity modifier) (qualifier value)"

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

// --------------------------------------
// ABATEMENT DATE (Symptombeendigung, falls relevant)
//* abatementDateTime = "2023-11-12"

//_____________________________________________________________________________
// Example-Instance zu Krebserkrankung die nicht vorliegt
Instance: Beispiel-Kardio-Condition-Krebs-Endstadium-Not-Present
InstanceOf: MII_PR_Kardio_Diagnose
Title: "Beispiel einer nicht vorliegenden terminalen Krebserkrankung"
Description: "Vollständig befüllte FHIR-Instanz zur Repräsentation des Nicht-Vorliegens einer Krebserkrankung im Endstadium gemäß dem Profil MII_PR_Kardio_Diagnose."
Usage: #example

* id = "beispiel-kardio-krebs-terminal-liegt-nicht-vor"

// --------------------------------------
// CATEGORY (problem-list-item)
* category = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item "Problem List Item"

// --------------------------------------
// CODE (ICD10-GM & SNOMED)
* code.coding[icd10-gm] = $icd-10-gm|2025#C34.9 "Bösartige Neubildung: Bronchus oder Lunge, nicht näher bezeichnet"
* code.coding[sct] = $sct#254637007 "Non-small cell lung cancer (disorder)"

// --------------------------------------
// SEVERITY (Endstadium / Terminal)
* severity = $sct#42796001 "End-stage (qualifier value)"

// --------------------------------------
// SUBJECT
* subject.display = "Erika Musterfrau (Beispielpatientin mit Krebserkrankung)"

// --------------------------------------
// RECORDER (Patient selbst hat Angabe gemacht / Patient)
* recorder.display = "Erika Musterfrau (Patientin hat selbst Angabe gemacht)"

// --------------------------------------
// ASSERTER (Arzt)
* asserter.display = "Onkologe"

// --------------------------------------
// VERIFICATION STATUS (confirmed) --> bezieht sich auf Status der Diagnose oben (nicht auf die Antwort des Patienten)
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#refuted "Refuted"

// --------------------------------------
// EXTENSION: Feststellungsdatum
//* extension[Feststellungsdatum].url = "http://hl7.org/fhir/StructureDefinition/condition-assertedDate"
//* extension[Feststellungsdatum].valueDateTime = "2021-05-15"

// --------------------------------------
// Recorded DATE
* recordedDate = "2025-05-13"

// --------------------------------------
// ONSET DATE
//* onsetDateTime = "2021-05-15"

// --------------------------------------
// ABATEMENT DATE (nicht gesetzt, da Erkrankung aktiv und terminal)

//_____________________________________________________________________________
// Example-Instance zu die Diagnose ist unbekannt
Instance: Beispiel-Kardio-Condition-Diagnose-Unknown
InstanceOf: MII_PR_Kardio_Diagnose
Title: "Beispiel einer Diagnose deren Vorliegen dem Arzt und evtl. Patienten unbekannt ist"
Description: "Vollständig befüllte FHIR-Instanz zur Repräsentation des Nicht-Vorliegens einer Krebserkrankung im Endstadium gemäß dem Profil MII_PR_Kardio_Diagnose."
Usage: #example

* id = "beispiel-kardio-pavk-unbekannt"

// --------------------------------------
// CATEGORY (problem-list-item)
* category = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item "Problem List Item"

// --------------------------------------
// CODE (ICD10-GM & SNOMED)
* code.coding[icd10-gm] = $icd-10-gm|2025#I70.2 "Atherosklerose der Extremitätenarterien"
* code.coding[sct] = $sct#399957001 "Peripheral arterial occlusive disease (disorder)"

// --------------------------------------
// SEVERITY (Endstadium / Terminal)
//* severity.coding.system = "http://snomed.info/sct"
//* severity.coding.code = #42796001
//* severity.coding.display = "Terminal stage (qualifier value)"

// --------------------------------------
// SUBJECT
* subject.display = "Erika Musterfrau"

// --------------------------------------
// RECORDER (Patient selbst hat Angabe gemacht / Patient)
* recorder.display = "Patient"

// --------------------------------------
// ASSERTER (Arzt)
* asserter.display = "kardiologe"

// --------------------------------------
// VERIFICATION STATUS (confirmed) --> bezieht sich auf Status der Diagnose oben (nicht auf die Antwort des Patienten)
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#unconfirmed "Unconfirmed"

// --------------------------------------
// EXTENSION: Feststellungsdatum
//* extension[Feststellungsdatum].url = "http://hl7.org/fhir/StructureDefinition/condition-assertedDate"
//* extension[Feststellungsdatum].valueDateTime = "2021-05-15"

// --------------------------------------
// Recorded DATE
* recordedDate = "2025-05-13"

// --------------------------------------
// ONSET DATE
//* onsetDateTime = "2021-05-15"

// --------------------------------------
// ABATEMENT DATE (nicht gesetzt, da Erkrankung aktiv und terminal)
