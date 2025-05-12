Profile: MII_PR_Kardio_Observation_Anzahl_KH_Aufenthalte_wg_HF
Id: mii-pr-kardio-observation-anzahl-kh-aufenthalte-wg-hf
Parent: Observation //korrekt so
Title: "MII PR Kardio Observation Anzahl KH Aufenthalte wg HF"
Description: "Profil zur Erfassung des Anzahl von Krankenhausaufenthalten und Gründen in einem Zeitraum im Kontext von ACRIBiS."
// Ermöglichen Anzahl Aufenhtalte wg. Herzinsuffizienz direkt anzugeben

* code 1..1 MS
* code.coding 1..1 MS
* code.coding.system = $sct
* code.coding.code = $sct#32485007 //hospital admission (procedure)
* code.coding.display = "hospital admission (procedure)"

// Anzahl als Value/Integer 
* value[x] 1..1 MS
* value[x] only integer

// Subject 1..1 MS Reference(Patient)
* subject 1..1 MS
* subject only Reference(Patient)

// Component
* component MS
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "$this"
* component ^slicing.rules = #closed
* component ^slicing.ordered = false
* component ^slicing.description = "Details zu den Krankenhausaufenthalten ()."
* component contains
    Grund 1..1 MS and
    Dauer 0..1 and
    Beginn 0..1 and
    Ende 0..1

// Grund
* component[Grund].valueString = "Herzinsuffizienz"
* component[Grund].code = $sct#84114007 // Heart failure (Herzinsuffizienz)
* component[Grund].valueCodeableConcept = $sct#84114007 "Heart failure"

// TODO: Code muss geprüft werden. Eventuell sind noch weitere Codes relevant. Nicht immer wird bei Aufnahme wg. HF unbedingt HF angegeben --> indirekte Hinweise berücksichtigen?

// Dauer
* component[Dauer].valueDuration

// Beginn
* component[Beginn].valueDateTime

// Ende
* component[Ende].valueDateTime