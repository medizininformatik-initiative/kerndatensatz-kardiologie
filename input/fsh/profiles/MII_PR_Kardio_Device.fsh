Profile: MII_PR_Kardio_Device
Id: mii-pr-kardio-device
Parent: Device
Title: "MII PR Kardio Device"
Description: "Profil zur Abbildung eines implantierten Herzschrittmachers, Defibrillators oder ventrikulären Unterstützungssystems."

* insert PR_CS_VS_Version
* insert Publisher

* ^status = #draft
* ^experimental = true
* ^date = "2025-09-04"

* status MS

* type from MII_VS_Kardio_Geraetetyp_SNOMEDCT (required)
* type 1.. MS
* type ^comment = "Der Typ soll mit einem SNOMED-Code angegeben werden.
Für ACRIBiS müssen die folgenden Codes verwendet werden (Stand 01.05.2025):
 - **ICD**: 72506001 - Implantable defibrillator, device (physical object)
 - **CRT**: 704708004 - Cardiac resynchronization therapy implantable pacemaker (physical object)
 - **ICD+CRT**: 704707009 - Cardiac resynchronization therapy implantable defibrillator (physical object)
 - **Herzschrittmacher ohne genauere Bezeichnung**: 72506001 - Implantable defibrillator, device (physical object)
 - **LVAD**: 360066001 - Left ventricular assist device (physical object)
 - **RVAD**: 360065002 - Right ventricular assist device (physical object)
 - **BiVAD**: 360057000 - Biventricular assist device (physical object)"

* patient 1.. MS

Instance: mii-exa-kardio-device-icd
InstanceOf: MII_PR_Kardio_Device
Title: "MII EXA Kardio Device ICD"
Description: "Beispiel eines implantierten Kardioverter-Defibrillators (ICD)"
Usage: #example

* status = #active
* manufacturer = "Medtronic"
* type.coding.system = $sct
* type.coding.code = #72506001
* type.coding.display = "Implantable defibrillator, device (physical object)"
* patient.display = "Beispielpatient"