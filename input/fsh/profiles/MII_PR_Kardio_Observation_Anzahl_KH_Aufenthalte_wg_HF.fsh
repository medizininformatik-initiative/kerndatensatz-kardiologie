Profile: MII_PR_Kardio_Observation_Anzahl_KH_Aufenthalte_wg_HF
Id: mii-pr-kardio-observation-anzahl-kh-aufenthalte-wg-hf
Parent: Observation //korrekt so
Title: "MII PR Kardio Observation Anzahl KH Aufenthalte wg HF"
Description: "Profil zur Erfassung des Anzahl von Krankenhausaufenthalten und Gründen in einem Zeitraum im Kontext von ACRIBiS."
// Ermöglichen Anzahl Aufenhtalte wg. Herzinsuffizienz direkt anzugeben
* insert PR_CS_VS_Version
* insert Publisher

* code 1..1 MS
* code.coding 1..1 MS
* code.coding = $sct#32485007 //hospital admission (procedure)
* code.coding.system 1.. MS
* code.coding.code 1.. MS

// Subject 1..1 MS Reference(Patient)
* subject 1..1 MS
* subject only Reference(Patient)

* effective[x] 1.. MS

// Anzahl als Value/Integer 
* value[x] 1..1 MS
* value[x] only integer

* bodySite ..0
* specimen ..0

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
* component[Grund].code 1.. MS
* component[Grund].code.coding = $sct#406524005 // Reason for visit diagnosis (attribute)
* component[Grund].value[x] 1.. MS
* component[Grund].value[x] only CodeableConcept
* component[Grund].valueCodeableConcept = $sct#84114007

// TODO: Code muss geprüft werden. Eventuell sind noch weitere Codes relevant. Nicht immer wird bei Aufnahme wg. HF unbedingt HF angegeben --> indirekte Hinweise berücksichtigen?

// Dauer
* component[Dauer].valueDuration

// Beginn
* component[Beginn].valueDateTime

// Ende
* component[Ende].valueDateTime

Instance: mii-exa-kardio-observation-anzahl-kh-aufenthalte-wg-hf
InstanceOf: MII_PR_Kardio_Observation_Anzahl_KH_Aufenthalte_wg_HF
Title: "MII EXA Kardio Observation Anzahl KH Aufenthalte WG HF"
Description: "Beispiel einer Observation für die Krankenhausaufenthalte wegen Herzinsuffizienz im letzten Jahr"
Usage: #example

* status = #draft
* code.coding = $sct#32485007 "Hospital admission (procedure)"
* subject.reference = "Patient/demo-patient"
* effectiveDateTime = "2025-05-21T17:35:22+02:00"
* valueInteger = 3
* component[Grund].code.coding = $sct#406524005 "Reason for visit diagnosis (attribute)"