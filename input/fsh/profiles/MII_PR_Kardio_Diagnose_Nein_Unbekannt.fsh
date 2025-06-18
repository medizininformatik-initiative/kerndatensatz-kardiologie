Profile: MII_PR_Kardio_Diagnose_Nein_Unbekannt
Id: mii-pr-kardio-diagnose-nein-unbekannt
Parent: Observation
Title: "MII PR Kardio Diagnose Nein Unbekannt"
Description: "Dieses Profil bildet das anamnestische Nichtvorliegen einer Diagnose oder Unklarheit darüber ab."

* insert PR_CS_VS_Version
* insert Publisher

* category from $observation-category-vs (required)
* code 1..1 MS
* code from $diagnoses-sct
* code.coding 1..1 MS 
* code.coding.system 1.. MS
* code.coding.code 1.. MS

* subject 1..1 MS
* subject only Reference(Patient)

* focus ..0

* effective[x] 1.. MS
* effective[x] only dateTime

* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept from MII_VS_Kardio_Diagnose_Nein_Unbekannt (required)

* interpretation ..0
* bodySite ..0
* specimen ..0
* referenceRange ..0
* hasMember ..0
* component ..0

Instance: mii-exa-kardio-herzinsuffizienz-unbekannt
InstanceOf: MII_PR_Kardio_Diagnose_Nein_Unbekannt
Title: "MII EXA Kardio Herzinsuffizienz Unbekannt"
Description: "Beispiel: Der Patient weiß nicht, ob er Herzinsuffizienz hat."
Usage: #example

* status = #final
* category = #survey
* code = $sct#84114007 "Heart failure (disorder)"
* subject.reference = "Patient/mii-exa-person-patient-minimal"
* effectiveDateTime = "2025-06-06T14:29:34.214+02:00"
* valueCodeableConcept = $v2-0532#ASKU "asked but unknown"
* method =  $sct#129431000 "History taking - action (qualifier value)"
* device.reference = "Device/example-tablet"
* derivedFrom.reference = "QuestionaireResponse/example-qr"