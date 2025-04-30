Profile: MII_PR_Kardio_Condition_Diagnose
Id: mii-pr-kardio-condition-diagnose
Parent: MII_PR_Diagnose_Condition

Title: "MII PR Kardio Diagnose"
Description: "Profil zur Abbildung einer Diagnose im Kontext des Projekts Acribis."

// Die erfassten Diagnosen sind nicht unbedingt abrechnungsrelevant, wir nehmen auch Nebendiagnosen etc.
* category 0..*
// Slicing, sodass es eine Kategorie gibt, die unser item enthaelt. TODO anpassen und wieder einkommentieren
//* category.coding.code = $condition-category#problem-list-item (exactly)

// Fuer "terminale Krebserkrankung" soll abbildbar sein, ob diese Terminal ist
* severity 0..1 MS
// todo valueset prüfen und "terminal" oder snomed "endstage" vorschlagen.

//_________________________
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

//_________________________
// Verification Status und die Angabe VS: Ja/Nein/unbekannt/weiß nicht
//   modifierExtension notwendig --> verändert die Aussage anderer Werte in der Ressource 
//   --> Diagnose-Code gegeben, aber modifier sagt, nicht vorhanden.

// TODO: modifierExtension
// FHIR-invariant/rule: Abgleich mit VerificationStatus --> Plausibilität/Coconstraint prüfen
// Vgl. GECCO --> evtl. alle Werte aus VS in modifierExtension schreiben   --> VS v2-xxx FHIR VS
//   GECCO-Diagnose (Condition): https://simplifier.net/guide/GermanCoronaConsensusDataSet-ImplementationGuide/Home/GECCOCore/AnamnesisRiskfactors/Disordersofcardiovascularsystem.guide.md?version=current
* verificationStatus 1..1 MS

// TODO invarianten

//_________________________
// Feststellungsdatum oder assertedDate soll angegeben werden wenn vorhanden
// Feststellungsdatum = Erstdiagnosedatum

//_________________________
// CODE als ICD10 oder SNOMED:
// Kann angegeben werden. Evtl. Fragen die DIZe nach einer Liste relevanter Diagnosen. Abgleich mit DS 4.1.1 siehe 
// Die Diagnose kann auch als SNOMED Code angegeben werden --> passend, wenn Diagnose nicht vorliegt, aber im Fragebogen eine entsprechende Angabe ist