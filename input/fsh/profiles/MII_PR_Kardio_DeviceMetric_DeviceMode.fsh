Profile: MII_PR_Kardio_DeviceMetric_DeviceMode
Id: mii-pr-kardio-devicemetric-devicemode
Parent: DeviceMetric
Title: "MII_PR_Kardio_DeviceMetric_DeviceMode"
Description: "Profil zur Angabe des Betriebsmodus eines Device im Kontext des Projekts Acribis."
//Parent: DeviceMetric

//* category 1..1 MS
//* category only code
// category system = "http://hl7.org/fhir/ValueSet/metric-category"
* category = #setting
* category ^comment = "Kardinalität geerbt aus Parent Standard-DeviceMetric."

// DeviceMetric.type
* type 1..1 MS
* type only CodeableConcept
* type from $device-types (preferred)

* unit 0..0

* source 1..1 MS
* source only Reference(Device)

* parent 1..1 MS
* parent only Reference(Device)

* calibration 0..0 

// See CodeSystem "MII_CS_Kardio_Kardiale_Implantate" and ValueSet "MII_VS_Kardio_device-types"
  // □ ICD = implantable cardioverter defibrillator = Z95.810 = Subcutaneous implantable cardioverter defibrillator (physical object)
  // □ CRT = 	Cardiac Resynchronization Therapy = Cardiac resynchronization therapy implantable pacemaker (procedure or physical object)
  // □ AAI-Schrittmacher
  // □ VVI-Schrittmacher
  // □ DDD-Schrittmacher
  // □ unbekannt   



