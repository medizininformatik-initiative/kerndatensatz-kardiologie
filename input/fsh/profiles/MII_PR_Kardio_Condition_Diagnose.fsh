Profile: MII_PR_Kardio_Condition_Diagnose
Id: mii-pr-kardio-condition-diagnose
Parent: MII_PR_Diagnose_Condition
Title: "MII PR Kardio Condition Diagnose"
Description: "Profil zur Abbildung einer Diagnose im Kontext des Projekts Acribis."
* insert PR_CS_VS_Version
* insert Publisher

//_________________________category
// IG: Die relevanten Diagnosen sind nicht nur die Abrechnungsrelevanten, 
//     wir nehmen auch Nebendiagnosen, ungesicherte Diagnosen etc. aka "Problem-List-Items".
* category 0..*
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open // erlaubt jegliche category slice (names)
* category ^slicing.ordered = false
* category ^slicing.description = "Unterscheidung zwischen Falldiagnose und beliebiger Diagnose."
* category contains                         // defines slice name(s), no need for ^sliceName-Rule
    diagnosis_category 0..1
* category[diagnosis_category] ^comment = "Unterscheidung zwischen Falldiagnose (encounter-diagnose) und beliebiger Diagnose (problem-list-item)."
* category[diagnosis_category] only CodeableConcept
* category[diagnosis_category].coding 1..1
* category[diagnosis_category] from http://hl7.org/fhir/ValueSet/condition-category (required) //$condition-category-vs

//_________________________severity
// IG: Fuer  das Datenitem "terminale Krebserkrankung" soll abbildbar sein, ob eine erfasste Krebserkrankung Terminal ist. 
//     Falls keine gesicherte Diagnose vorhanden ist, kann statt eines ICD10-Codes ein SNOMED-Code verwendet werden.
//     Severe = 24484000; Moderate = 6736007; Mild = 255604002;
//     Terminal/End-stage = 42796001;
* severity 0..1 MS
* severity from $extended-condition-severity (preferred)
* severity ^comment = "Extended valueSet to allow value'terminal'/'end-stage' as additional information for a given cancer diagnosis." 

// Subject
* subject 1..1 MS
* subject only Reference(Patient)

//_________________________Code
// IG: Grundsätzlich kann eine Diagnose oder "Problem-List-Item" als ICD10-Codes oder per SNOMED-Code angegeben werden.
//     Die Verwendung des SNOMED-Codes statt ICD10-Code bietet sich bspw. bei Verwendung von Anamnese-/Fragebogenantworten an.
//     Relevante Datenitems sind im Acribis-Datensatz 4.1.1 aufgelistet, müssen aber standortspezifisch gemappt werden.
// * code.coding[icd10-gm] 0..1 MS    // ist bereits must-support
// * code.coding[sct] 0..1 MS         // ist bereits must-support
// TODO? Example-VS mit allen Codes die in Acribis relevant sind?
// Philipp (13.05.2025): Ich habe die beiden Zeilen zum coding auskommentiert, weil sie einen Fehler verursachen

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
* recorder ^isModifier = true
* recorder ^isModifierReason = "Can express the uncertainty of a diagnosis by stating a recorder that is not authorized to define an confirmed diagnosis."
* recorder ^comment = "Allows documentation about who recorded the given information. This might be the Patient (see subject reference), a Study Nurse or a Doctor. May focus on the role (PracticionerRole-Reference) and not reference a specific person."
* asserter 0..1 MS
* asserter ^isModifier = true
* asserter ^isModifierReason = "Can express the uncertainty of a diagnosis by stating a asserter that is not authorized to define an confirmed diagnosis."
* asserter ^comment = "Allows documentation about who asserted the given information. This might be the Patient (see subject reference), a Study Nurse or a Doctor. May focus on the role (PracticionerRole-Reference) and not reference a specific person."

//_________________________verificationStatus
// Verification Status und die Angabe: Ja/Nein/unbekannt/weiß nicht --> http://terminology.hl7.org/CodeSystem/v2-0532
// modifierExtension notwendig --> verändert Aussage anderer Werte in Ressource --> e.g. Diagnose-Code gegeben, aber modifier sagt, nicht vorhanden.
* modifierExtension contains $anamnese-antwort named AnamneseAntwort 0..1 MS
* modifierExtension[AnamneseAntwort] ^comment = "Can contradict the presence of a diagnosis by stating the given diagnosis status was stated as 'unknown', 'asked-unknown' or similar."

// TODO: FHIR-invariant/rule: Abgleich mit VerificationStatus --> Plausibilität/Coconstraint prüfen
* verificationStatus 1..1 MS
// * insert invariant with plausi-check

//_________________________extension-Feststellungsdatum
// Feststellungsdatum = Erstdiagnosedatum
// Feststellungsdatum oder assertedDate soll angegeben werden wenn vorhanden
* extension[Feststellungsdatum] 0..1 MS

// IG TODO beschreiben, wie man welche wege angibt