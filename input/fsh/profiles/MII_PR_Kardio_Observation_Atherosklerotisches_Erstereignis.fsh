Profile: MII_PR_Kardio_Observation_Atherosklerotisches_Erstereignis
Id: mii-pr-kardio-observation-atherosklerotisches-erstereignis
Parent: Observation //MII_PR_Diagnose_Condition
Title: "MII PR Kardio Observation Atherosklerotisches Erstereignis"
Description: "Profil zur Erfassung des Datum des ersten  artherosklerotischen Ereignisses im Kontext von ACRIBiS."
* insert PR_CS_VS_Version
* insert Publisher

// Code, um anzugeben, welches Ereignis das erste war: 
// Koronare Herzerkrankung, TIA, Amaurosis Fugax, Apoplex, Retinainfarkt, oder Operation der Carotiden, pAVK, Bauchaortenaneurysma.
* code 1..1 MS
* code.coding 1..1 MS
* code.coding from $atherosklerotische-ereignisse (preferred) //TODO SNOMED/ICD

// Subject Patient MS 1..1
* subject 1..1 MS
* subject only Reference(Patient)

// Erstdiagnosedatum als Feststellungsdatum der Condition/Observation
* value[x] only dateTime
* valueDateTime 1..1 MS
//* extension[Feststellungsdatum] 1..1 MS

//_____________________
//Diskussion: Observation mit SNOMED Code oder Condition mit SNOMED oder ICD-Code? --> Observation
//Wenn "Operation an den Karotiden" (Prozedur) teil des ValueSets ist, lässt sich das ganze nicht als Diagnose abbilden.


// IG Hinweis, dass evtl. aus Diagnosen abgefragt werden / soll kann. Standortabhängig? Feedback abwarten, bei Bedarf diskutieren.

Instance: mii-exa-kardio-observation-atherosklerotisches-erstereignis
InstanceOf: MII_PR_Kardio_Observation_Atherosklerotisches_Erstereignis
Title: "MII EXA Kardio Observation Atherosklerotisches Erstereignis"
Description: "Beispiel einer Observation für das Datum eines unbestimmten atherosklerotischen Erstereignisses"
Usage: #example

* status = #final
* code.coding = https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-atherosklerotische-erstereignisse#aee "Atherosklerotisches Erstereignis"
* subject.reference = "Patient/demo-patient"
* effectiveDateTime = "2025-05-23T13:48:17+02:00"
* performer.reference = "PractitionerRole/demo-kardiologe"
* valueDateTime = "2023-01"