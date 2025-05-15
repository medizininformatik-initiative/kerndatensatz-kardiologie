Profile: MII_PR_Kardio_Kardiale_Deviceimplantation
Id: mii-pr-kardio-kardiale-deviceimplantation
Parent: mii-pr-prozedur-procedure
Title: "MII PR Kardio Kardiale Deviceimplantation"
Description: "Profil zur Erfassung einer Implantation eines Herzschrittmachers zur kardialen Resynchronationstherapie, Kardioverter-Defibrillators oder ventrikulären Unterstützungssystems."

* insert PR_CS_VS_Version
* insert Publisher

* ^status = #draft
* ^experimental = true
* ^date = "2025-05-13"

* status = #completed
* statusReason ..0

* category.coding[sct] 1..
* category.coding[sct].code = #387713003 (exactly)

* subject only Reference(Patient)
* bodySite from $koerperstelle (required)

* focalDevice 1.. MS
* focalDevice.action from $procedure-device-action-codes (required)
* focalDevice.action = $procedure-device-action-codes#129338005
* focalDevice.manipulated MS
* focalDevice.manipulated only Reference(Device)


// Anmerkung FE: Wieviele Sonden hat das Gerät --> andere Metric / erstmal nicht für Acribis --> dann für KDS Kardio gesamt