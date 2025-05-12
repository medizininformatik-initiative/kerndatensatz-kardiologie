Profile: MII_PR_Kardio_Procedure_Implantation
Id: mii-pr-kardio-procedure-implantation
Parent: mii-pr-prozedur-procedure
Title: "MII PR Kardio Prozedur Implantation"
Description: "Profil zur Erfassung eines implantierten Devices mit Referenz auf Device und DeviceMetric."

* code.coding.code 1..1 MS
// * code.coding.code = $ops#xyz

* subject 1..1 MS
* subject only Reference(Patient)

// device-implantation mit referenz auf device
  // focal device als must-support
  // Änderungen an Device für emdn oder unser VS  TODO Device Ressource
* focalDevice 1..* MS
* focalDevice.manipulated 1..1 MS
* focalDevice.manipulated only Reference(Device)

* usedReference 1..* MS
* usedReference only Reference(Device)



// Anmerkung FE: Wieviele Sonden hat das Gerät --> andere Metric / erstmal nicht für Acribis --> dann für KDS Kardio gesamt