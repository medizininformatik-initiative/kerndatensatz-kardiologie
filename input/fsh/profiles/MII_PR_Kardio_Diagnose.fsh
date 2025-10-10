Profile: MII_PR_Kardio_Diagnose
Id: mii-pr-kardio-diagnose
Parent: MII_PR_Diagnose_Condition
Title: "MII PR Kardio Diagnose"
Description: "Profil zur Abbildung einer Diagnose im Kontext des Projekts Acribis."

* insert PR_CS_VS_Version
* insert Publisher

* ^status = #active
* ^experimental = false
* ^date = "2025-10-07"

//_________________________severity
// IG: Fuer  das Datenitem "terminale Krebserkrankung" soll abbildbar sein, ob eine erfasste Krebserkrankung Terminal ist. 
//     Falls keine gesicherte Diagnose vorhanden ist, kann statt eines ICD10-Codes ein SNOMED-Code verwendet werden.
//     Severe = 24484000; Moderate = 6736007; Mild = 255604002;
//     Terminal/End-stage = 42796001;
* severity MS
* severity from MII_VS_Kardio_Extended_Condition_Severity_SNOMEDCT (preferred)
* severity ^comment = "Extended valueSet to allow value'terminal'/'end-stage' as additional information for a given cancer diagnosis."

// TODO: Diese Zeile wieder entfernen. Das ist nur eine temporäre Lösung, da Ontoserver sonst nicht validiert.
// * statt Version referenziert alle Versionen des ValueSets
//* code.coding[icd10-gm] from http://fhir.de/ValueSet/bfarm/icd-10-gm|2025 (required)

// Subject
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
// * recorder ^isModifier = true
// * recorder ^isModifierReason = "Can express the uncertainty of a diagnosis by stating a recorder that is not authorized to define a confirmed diagnosis."
* recorder ^comment = "Allows documentation about who recorded the given information. This might be the Patient (see subject reference), a Study Nurse or a Doctor. May focus on the role (PracticionerRole-Reference) and not reference a specific person."

* asserter 0..1 MS
* asserter only Reference(Patient or PractitionerRole)
// * asserter ^isModifier = true
// * asserter ^isModifierReason = "Can express the uncertainty of a diagnosis by stating an asserter that is not authorized to define a confirmed diagnosis."
* asserter ^comment = "Allows documentation about who asserted the given information. This might be the Patient (see subject reference), a Study Nurse or a Doctor. May focus on the role (PracticionerRole-Reference) and not reference a specific person."

// TODO: FHIR-invariant/rule: Abgleich mit VerificationStatus --> Plausibilität/Co-constraint prüfen
// * verificationStatus 0..1 MS
// * insert invariant with plausi-check

// IG TODO beschreiben, wie man welche wege angibt