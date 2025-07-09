Profile: MII_PR_Kardio_EKG_Geraet
Id: mii-pr-kardio-ekg-geraet
Parent: Device
Title: "MII PR Kardio EKG Gerät"
Description: "Profil zur Abbildung eines EKG-Gerätes."

* insert PR_CS_VS_Version
* insert Publisher

* ^status = #draft
* ^experimental = true
* ^date = "2025-05-22"

* status MS
* manufacturer 1.. MS
* deviceName 1.. MS

* type from $mdc-objects-devices (required)
* type 1..1 MS
* type.coding 1.. MS

* patient 1.. MS

Instance: mii-exa-kardio-ekg-geraet-mortara
InstanceOf: MII_PR_Kardio_EKG_Geraet
Title: "MII EXA Kardio EKG Geraet Mortara"
Description: "Beispiel eines EKG Gerätes der Firma Mortara Instruments"
Usage: #example

* definition.reference = "DeviceDefinition/mii-exa-kardio-ekg-geraetedefinition-mortara"
* status = #active
* manufacturer = "Mortara Instrument, Inc."
* deviceName.name = "ELI 380"
* deviceName.type = #model-name
* type.coding[0] = $mdc#69797 "MDC_DEV_ECG_MDS"
* type.coding[1] = $mdc#69798 "MDC_DEV_ECG_VMD"
* patient.reference = "Patient/mii-exa-person-patient-minimal"