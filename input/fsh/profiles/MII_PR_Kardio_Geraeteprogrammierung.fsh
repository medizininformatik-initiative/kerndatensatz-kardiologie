Profile: MII_PR_Kardio_Geraeteprogrammierung
Id: mii-pr-geraeteprogrammierung
Parent: Observation
Description: "Der älsrjigoijr..."
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-05-13"
* ^publisher = "Medizininformatik Initative"

* basedOn ..0
* partOf ..0
* code.coding 1..
* code.coding.system 1..
* code.coding.system = $mdc (exactly)
* code.coding.code 1..
* code.coding.code = #730752 (exactly)

* code from http://hl7.org/fhir/ValueSet/observation-codes (example)
* subject 1..
* subject only Reference(Device)
* focus 1..1
* focus only Reference(DeviceMetric)
* issued ..0
* performer ..0
* value[x] 1..
* value[x] only CodeableConcept
* valueCodeableConcept from $geraeteprogrammierung (required)
* interpretation ..0
* bodySite ..0
* method ..0
* specimen ..0
* referenceRange ..0
* hasMember ..0
* derivedFrom ..0 
* component ..0