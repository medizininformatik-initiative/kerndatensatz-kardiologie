Profile: MII_PR_Kardio_EKG_Geraetedefinition
Id: mii-pr-kardio-ekg-geraetedefinition
Parent: DeviceDefinition
Title: "MII PR Kardio EKG Gerätedefinition"
Description: "Profil zur Abbildung einer EKG-Gerätedefinition."

* insert PR_CS_VS_Version
* insert Publisher

* ^status = #draft
* ^experimental = true
* ^date = "2025-05-22"

* manufacturer[x] 1.. MS
* deviceName 1.. MS

Instance: mii-exa-kardio-ekg-geraetedefinition-mortara
InstanceOf: MII_PR_Kardio_EKG_Geraetedefinition
Title: "MII EXA Kardio EKG Geraetedefinition Mortara"
Description: "Beispiel einer EKG Gerätedefinition für ein EKG-Gerät der Firma Mortara Instruments"
Usage: #example

* manufacturerString = "Mortara Instrument, Inc."
* deviceName.name = "ELI 380"
* deviceName.type = #model-name

* specialization.systemType = "Resting ECG"

* physicalCharacteristics.height.value = 14
* physicalCharacteristics.height.system = $ucum
* physicalCharacteristics.height.code = #cm
* physicalCharacteristics.width.value = 39
* physicalCharacteristics.width.system = $ucum
* physicalCharacteristics.width.code = #cm
* physicalCharacteristics.depth.value = 51
* physicalCharacteristics.depth.system = $ucum
* physicalCharacteristics.depth.code = #cm
* physicalCharacteristics.weight.value = 12
* physicalCharacteristics.weight.system = $ucum
* physicalCharacteristics.weight.code = #kg

* onlineInformation = "https://www.hillrom.de/de/products/eli-380-electrocardiograph/"
