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

* type from MII_VS_Kardio_Objekte_Geraete_MDC (required)
* type 1..1 MS
* type.coding 1.. MS