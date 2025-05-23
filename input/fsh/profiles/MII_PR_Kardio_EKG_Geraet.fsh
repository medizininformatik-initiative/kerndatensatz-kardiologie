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

// * type from $geraetetyp (required)
// * type 1.. MS

* patient 1.. MS

Instance: mii-exa-kardio-ekg-geraet-mortara
InstanceOf: MII_PR_Kardio_EKG_Geraet
Title: "MII EXA Kardio EKG Geraet Mortara"
Description: "Beispiel eines EKG Gerätes der Firma Mortara Instruments"
Usage: #example

* status = #active
* manufacturer = "..."
* patient.reference = "Patient/mii-exa-person-patient-minimal"