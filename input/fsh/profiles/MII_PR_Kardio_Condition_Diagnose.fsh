Profile: MII_PR_Kardio_Condition_Diagnose
Id: mii-pr-kardio-condition-diagnose
Parent: MII_PR_Diagnose_Condition
Title: "MII_PR_Kardio_Condition_Diagnose"
Description: "Profil zur Abbildung einer Diagnose im Kontext des Projekts Acribis."

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

//_________________________Code
// IG: Grundsätzlich kann eine Diagnose oder "Problem-List-Item" als ICD10-Codes oder per SNOMED-Code angegeben werden.
//     Die Verwendung des SNOMED-Codes statt ICD10-Code bietet sich bspw. bei Verwendung von Anamnese-/Fragebogenantworten an.
//     Relevante Datenitems sind im Acribis-Datensatz 4.1.1 aufgelistet, müssen aber standortspezifisch gemappt werden.
* code.coding[icd10-gm] 0..1 MS    // ist bereits must-support
* code.coding[sct] 0..1 MS         // ist bereits must-support

//_________________________recorder / asserter
// Benötigt Referenz auf Person --> PracticionerRole (Doctor) und Patient  
// Wir ermöglichen Standorten nicht validierte Informationen kenntlich zu machen. 
//   Wenn bekannt, das Angabe vom Patient kommt, dann angeben.
//   Wenn Patient Asserter, dann recorder auch Patient.
//   Wenn Patient dann verificationStatus entsprechend setzen.
//      Patient/study nurse (practicioner role) recorder --> arzt asserter = standardfall bei Patientenfragebogen
// MS, damit die Angabe (bei Vorhandensein der Information) erfolgt und das in FDPG berücksichtigt wird
* recorder 0..1 MS
* recorder ^comment = "Allows documentation about who recorded the given information. This might be the Patient (see subject reference), a Study Nurse or a Doctor. May focus on the role (PracticionerRole-Reference) and not reference a specific person."
* asserter 0..1 MS
* asserter ^comment = "Allows documentation about who asserted the given information. This might be the Patient (see subject reference), a Study Nurse or a Doctor. May focus on the role (PracticionerRole-Reference) and not reference a specific person."

//_________________________verificationStatus
// Verification Status und die Angabe VS: Ja/Nein/unbekannt/weiß nicht --> http://terminology.hl7.org/CodeSystem/v2-0532
//   modifierExtension notwendig --> verändert die Aussage anderer Werte in der Ressource 
//   --> Diagnose-Code gegeben, aber modifier sagt, nicht vorhanden.
* extension contains $anamnese-antwort named AnamneseAntwort 0..1 MS
// modifierExtension --> error
// error Non-modifier extension https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-ex-kardio-anamneseantwort assigned to modifierExtension path. Non-modifier extensions should only be assigned to extension paths.
  // File: /mnt/c/Dateien_Richter122/git-projects/kerndatensatz-kardiologie/input/fsh/profiles/MII_PR_Kardio_Condition_Diagnose.fsh
  // Line: 34

// TODO: modifierExtension
// FHIR-invariant/rule: Abgleich mit VerificationStatus --> Plausibilität/Coconstraint prüfen
// Vgl. GECCO --> evtl. alle Werte aus VS in modifierExtension schreiben   --> VS v2-xxx FHIR VS
//   GECCO-Diagnose (Condition): https://simplifier.net/guide/GermanCoronaConsensusDataSet-ImplementationGuide/Home/GECCOCore/AnamnesisRiskfactors/Disordersofcardiovascularsystem.guide.md?version=current
* verificationStatus 1..1 MS

//_________________________
// TODO invarianten

//_________________________extension-Feststellungsdatum
// Feststellungsdatum oder assertedDate soll angegeben werden wenn vorhanden
// Feststellungsdatum = Erstdiagnosedatum