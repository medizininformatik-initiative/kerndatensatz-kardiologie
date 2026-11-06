Profile: MII_PR_Kardio_EKG_Geraet
Id: mii-pr-kardio-ekg-geraet
Parent: Device
Title: "MII PR Kardio EKG Gerät"
Description: "Profil zur Abbildung eines EKG-Gerätes."

* insert PR_CS_VS_Version
* insert Publisher

* ^language = #de
* ^status = #draft
* ^experimental = true
* ^date = "2026-11-06"

* status MS
* manufacturer MS
* manufacturer ^short = "Hersteller des Gerätes"

* deviceName MS
* deviceName ^short = "Bezeichnungen des Gerätes"
* deviceName.name MS
* deviceName.type MS
* deviceName ^slicing.discriminator.type = #value
* deviceName ^slicing.discriminator.path = "type"
* deviceName ^slicing.rules = #open
* deviceName contains
    nutzername 0..1 MS and
    modellname 0..1 MS
* deviceName[nutzername].type = #user-friendly-name
* deviceName[nutzername] ^short = "Vom Nutzer gewählter Name des Gerätes (z.B. \"EKG Raum 1\")"
* deviceName[modellname].type = #model-name
* deviceName[modellname] ^short = "Modellname des Herstellers (z.B. \"ELI 380\")"

* modelNumber MS
* modelNumber ^short = "Modellnummer bzw. Typ-/Bestellnummer des Herstellers"
* modelNumber ^comment = "Der Modellname (z.B. \"ELI 380\") wird in deviceName[modellname] angegeben."

* serialNumber MS
* serialNumber ^short = "Seriennummer des Herstellers"

* version MS
* version ^short = "Version, z.B. der Software des Herstellers"
* version.type MS
* version.value MS

* location MS
* location ^short = "Standort des Gerätes (z.B. Klinik, Abteilung, Station)"

* type from MII_VS_Kardio_Objekte_Geraete_MDC (required)
* type 1..1 MS
* type.coding 1.. MS
* type.coding.system 1.. MS
* type.coding.version 1.. MS
* type.coding.code 1.. MS