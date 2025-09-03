Profile: MII_PR_Kardio_Anzahl_KH_Aufenthalte_wg_HF
Id: mii-pr-kardio-anzahl-kh-aufenthalte-wg-hf
Parent: Observation
Title: "MII PR Kardio Anzahl KH Aufenthalte wg HF"
Description: "Profil zur Erfassung des Anzahl von Krankenhausaufenthalten wegen Herzinsuffizienz in einem Zeitraum im Kontext von ACRIBiS."

* insert PR_CS_VS_Version
* insert Publisher

* ^status = #active
* ^experimental = false
* ^date = "2025-09-03"

* code 1..1 MS
* code.coding 1..1 MS
* code.coding = $sct#32485007 // Hospital admission (procedure)

* subject 1..1 MS
* subject only Reference(Patient)

* effective[x] 1.. MS
// TODO: Sollten wir das auf den Period einschränken, damit der genaue Zeitraum angegeben wird?

* value[x] 1.. MS
* value[x] only integer

* component 1.. MS
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Details zu den Krankenhausaufenthalten."
* component contains
    Grund 1..1 MS

* component[Grund].code 1.. MS
* component[Grund].code = $sct#406524005 // Reason for visit diagnosis (attribute)
* component[Grund].value[x] 1.. MS
* component[Grund].value[x] only CodeableConcept
* component[Grund].valueCodeableConcept = $sct#84114007

Instance: mii-exa-kardio-anzahl-kh-aufenthalte-wg-hf
InstanceOf: MII_PR_Kardio_Anzahl_KH_Aufenthalte_wg_HF
Title: "MII EXA Kardio Anzahl KH Aufenthalte WG HF"
Description: "Beispiel einer Observation für die Krankenhausaufenthalte wegen Herzinsuffizienz im letzten Jahr"
Usage: #example

* status = #final
* code.coding = $sct#32485007 "Hospital admission (procedure)"
* subject.display = "Beispielpatient"
* effectivePeriod.start = "2024-05-21"
* effectivePeriod.end = "2025-05-20"
* performer.display = "Beispielkardiologe"
* valueInteger = 3
* component[Grund].code.coding = $sct#406524005 "Reason for visit diagnosis (attribute)"
* component[Grund].valueCodeableConcept = $sct#84114007 "Heart failure (disorder)"