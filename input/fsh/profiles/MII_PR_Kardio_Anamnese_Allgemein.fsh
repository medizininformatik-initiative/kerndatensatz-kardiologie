// First Draft

// Diskussion: 
// Wie wird die Integration der relevanten Datenkategorien vorgenommen. 
// Ist das Ziel eher ein großes Anamnese-Profil? Wie sind die Kategorien zu sortieren?

// ACRIBiS Kategorien als Basis für Profile?
// Anamnese Allgemein
// Anamnese Risikofaktoren
// Anamnese Patientenfragebogen
// Anamnese Kardiovaskuläre Eingriffe
// Anamnese Kardiovaskuläre Erkrankung
// Anamnese Vorerkrankung
// Anamnese Laborwert
// Anamnese Medikation

// Wovon können wir hier erben, falls überhaupt?
// Weg: Profil finden, im Editor (https://fshschool.org/FSHOnline) in FSH umwandeln, nutzen

// Kopieren wir dafür die Struktur des Profils oder können wir direkt Teile davon verlinken? 
// Bsp.: https://fhir.kbv.de/StructureDefinition/KBV_PR_MIO_CMR_Observation_U7_U9_BMI
// Bsp.: https://fhir.kbv.de/StructureDefinition/KBV_PR_MIO_DIGA_Observation_Body_Weight || isik-vitalparameter-v4/isikkoerpergewicht
// Bsp.: https://simplifier.net/guide/MedizininformatikInitiative-ModulICU-ImplementationGuide/KoerpergroesseObservation || MIO || ISIK
// Was bevorzugen wir, wenn wir mehrere Mappings finden - ISIK sollte gut Verbreitung haben, oder?

Profile: MII_PR_Kardio_Anamnese_Allgemein
Id: mii-pr-kardio-anamnese-allgemein
Parent: Observation

Title: "MII PR Kardio Patient"
Description: "Erster Draft eines Profils für eine Ressource einer allgemeinen Anamnese."

* id MS
* meta MS
* meta.profile MS
* identifier MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier contains anamnese 1..1
* identifier[anamnese].id
// Identifier Coding, Type etc.

// Body weight --> CodeableConcept mit z.B. https://simplifier.net/packages/de.gematik.isik-vitalparameter/4.0.0-rc2/files/2454556 oder ICU KoerpergewichtObservation
// Hier können wir spezifische Codes oder Codings festschreiben
// BMI als Component mit dranpacken?
* component MS
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "type"
* component ^slicing.rules = #open
* component contains BMI 1..1
* component[BMI].valueQuantity.value MS
* component[BMI].valueQuantity.unit MS
* component[BMI].valueQuantity.system MS
//* component[BMI].valueQuantity.system = "http://unitsofmeasure.org" // already assigned

// Body size

// BMI