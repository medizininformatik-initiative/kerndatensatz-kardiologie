Profile: MII_PR_Kardio_Anzahl_KH_Aufenthalte_wg_HF
Id: mii-pr-kardio-anzahl-kh-aufenthalte-wg-hf
Parent: Observation
Title: "MII PR Kardio Anzahl KH Aufenthalte wg HF"
Description: "Profil zur Erfassung des Anzahl von Krankenhausaufenthalten wegen Herzinsuffizienz in einem Zeitraum im Kontext von ACRIBiS."

* insert PR_CS_VS_Version
* insert Publisher

* ^status = #active
* ^experimental = false
* ^date = "2026-06-12"

* code.coding 1..* MS
* code.coding.system 1.. MS
* code.coding.version 1.. MS
* code.coding.code 1.. MS
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "$this" 
* code.coding ^slicing.rules = #open
* code.coding contains
    sct 1..1 MS
* code.coding[sct] = $sct#298060002 // Number of admissions (observable entity)

* subject 1..1 MS
* subject only Reference(Patient)

* effective[x] 1.. MS
* effective[x] only Period

* value[x] MS
* value[x] only integer or CodeableConcept
* valueInteger MS
* valueCodeableConcept MS
* valueInteger obeys mii-kardio-pos-int
* valueCodeableConcept from MII_VS_Kardio_Nein_Unbekannt (required)

* component 1.. MS
* component ^slicing.discriminator.path = "code"
* component ^slicing.discriminator.type = #value
* component ^slicing.rules = #open
* component ^slicing.description = "Details zu den Krankenhausaufenthalten."
* component contains
    Grund 1..1 MS

* component[Grund].code 1.. MS
* component[Grund].code = $sct#406524005 // Reason for visit diagnosis (attribute)
* component[Grund].value[x] MS
* component[Grund].value[x] only CodeableConcept
* component[Grund].valueCodeableConcept = $sct#84114007