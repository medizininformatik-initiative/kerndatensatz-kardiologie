Profile: MII_PR_Kardio_Geraeteprogrammierung
Id: mii-pr-kardio-geraeteprogrammierung
Parent: Observation
Title: "MII PR Kardio Geräteprogrammierung"
Description: "Mit dieser Observation kann die Geräteprogrammierung, d.h. die DeviceMetric *Schrittmachermodus*, eines Gerätes zu einem bestimmten Zeitpunkt abgebildet werden."

* insert PR_CS_VS_Version
* insert Publisher

* ^status = #active
* ^experimental = false
* ^date = "2025-09-04"

* code from $devicemetric-type-vs (required)
* code MS
* code.coding 1.. MS
* code.coding.system 1.. MS
* code.coding.version 1.. MS
* code.coding.code 1.. MS
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "$this" 
* code.coding ^slicing.rules = #open
* code.coding contains
    mdc 1..1 MS

* code.coding[mdc] = $mdc#730752

* subject 1.. MS
* subject only Reference(Device)
* subject ^comment = "Hier wird das Device referenziert.
Das sollte eine Instanz von *MII PR Kardio Device* sein."

* focus MS
* focus only Reference(DeviceMetric)
* focus ^comment = "Hier wird die DeviceMetric referenziert.
Das sollte eine Instanz von *MII PR NBG Schrittmachermodus* sein."

* effective[x] 1.. MS

* value[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept from MII_VS_Kardio_Geraeteprogrammierung_MDC (required)
* valueCodeableConcept.coding 1.. MS
* valueCodeableConcept.coding.system 1.. MS
* valueCodeableConcept.coding.version 1.. MS
* valueCodeableConcept.coding.code 1.. MS