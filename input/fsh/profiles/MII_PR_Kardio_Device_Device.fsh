Profile: MII_PR_Kardio_Device_Device
Id: mii-pr-kardio-device-device
Parent: SD_MII_ICU_Icu_Device
Title: "MII_PR_Kardio_Device_Device"
Description: "Profil zur Abbildung eines Device im Kontext des Projekts Acribis."
// Parent: https://simplifier.net/medizininformatikinitiative-modul-intensivmedizin/sd_mii_icu_icu_device

// EMDN Code in "type"-Element ? oder identifier o.ä.? code?
// SNOMED Codes erlauben

* type 1..1 MS
* type from $emdn

* patient 1..1 MS
* patient only Reference(Patient)

// Wir wollen nur wissen ob icd oder crt.
// Steht dann in Device-Metric --> Warum nochmal Device-Metric und nicht Device.property? Oder hatten wir das nur im Detail noch nicht angeschaut.
* property 1..* MS
* property.type from $device-types