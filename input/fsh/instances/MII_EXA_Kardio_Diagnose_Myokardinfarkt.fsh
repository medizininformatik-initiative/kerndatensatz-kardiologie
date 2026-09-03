Instance: mii-exa-kardio-diagnose-myokardinfarkt
InstanceOf: MII_PR_Kardio_Diagnose
Title: "MII Kardio Diagnose Myokardinfarkt"
Description: "Beispielhafte vollständige Instanz einer Diagnose die vom Arzt bestätigt tatsächlich vorliegt gemäß dem Profil MII_PR_Kardio_Diagnose im Rahmen des ACRIBIS-Projekts."
Usage: #example

* language = #de-DE
* contained[0] = Beispielpatient
// --------------------------------------
// CATEGORY (problem-list-item)
* category = $condition-category#problem-list-item "Problem List Item"

// --------------------------------------
// CODE (ICD10-GM & SNOMED)
* code.coding[icd10-gm] = $icd-10-gm-with-version#I21.9 "Akuter Myokardinfarkt, nicht näher bezeichnet"
* code.coding[sct] = $sct-with-version#22298006 "Myocardial infarction"

// --------------------------------------
// SUBJECT (Patientenreferenz)
* subject = Reference(Beispielpatient)

// --------------------------------------
// RECORDER (Patient selbst hat Angabe gemacht / Patient)
* recorder = Reference(Beispielpatient)

// --------------------------------------
// ASSERTER (Arzt)
* asserter.display = "Facharzt für Kardiologie"

// --------------------------------------
// VERIFICATION STATUS -> Arzt hat festgestellt, dass Diagnose wohl nicht vorliegt
* verificationStatus = $condition-ver-status#confirmed "Confirmed"

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