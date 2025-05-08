ValueSet: MII_VS_Kardio_Device_Types_SNOMED
Id: mii-vs-kardio-device-types
Title: "MII_VS_Kardio_Device_Types_SNOMED"
Description: "ValueSet for cardial device operation modes for cardial implantable devices."
* ^status = #draft
* ^experimental = true
* ^date = "2025-05-08"
* ^version = "0.0.1"

* include codes from system $kardiale_implantat_modi_cs
* include $v2-0532#unknown

// Alternativ: https://hl7.org/fhir/R4/valueset-device-kind.html (extensible)
//* include $sct#14106009 //CRT
//* include $sct#19257004 //Devi ICD

// See CodeSystem "MII_CS_Kardio_Kardiale_Implantate" and ValueSet "MII_VS_Kardio_device-types"
  // □ ICD = implantable cardioverter defibrillator = Z95.810 = Subcutaneous implantable cardioverter defibrillator (physical object)
  // □ CRT = 	Cardiac Resynchronization Therapy = Cardiac resynchronization therapy implantable pacemaker (procedure or physical object)
  // □ AAI-Schrittmacher
  // □ VVI-Schrittmacher
  // □ DDD-Schrittmacher
  // □ unbekannt   