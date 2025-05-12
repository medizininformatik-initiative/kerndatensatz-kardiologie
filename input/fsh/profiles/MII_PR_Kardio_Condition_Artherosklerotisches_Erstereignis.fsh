Profile: MII_PR_Kardio_Observation_Datum_Artherosklerotisches_Erstereignis
Id: mii-pr-kardio-observation-artherosklerotisches-erstereignis
Parent: Observation //MII_PR_Diagnose_Condition
Title: "MII PR Kardio Observation Datum Artherosklerotisches Erstereignis"
Description: "Profil zur Erfassung des Datum des ersten  artherosklerotischen Ereignisses im Kontext von ACRIBiS."

// Code, um anzugeben, welches Ereignis das erste war: 
// Koronare Herzerkrankung, TIA, Amaurosis Fugax, Apoplex, Retinainfarkt, oder Operation der Carotiden, pAVK, Bauchaortenaneurysma.
* code 1..1 MS
* code.coding 1..1 MS
* code.coding from $artherosklerotische-ereignisse (preferred) //TODO SNOMED/ICD

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