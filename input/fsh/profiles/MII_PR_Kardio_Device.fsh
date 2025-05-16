Profile: MII_PR_Kardio_Device
Id: mii-pr-kardio-device
Parent: Device
Title: "MII PR Kardio Device"
Description: "Profil zur Abbildung eines implantierten Herzschrittmachers, Defibrillators oder ventrikulären Unterstützungssystems."

* insert PR_CS_VS_Version
* insert Publisher

* ^status = #draft
* ^experimental = true
* ^date = "2025-05-13"

* status MS

* type from $geraetetyp (required)
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

/*
Device.property.type ist gedacht für statische Eigenschaften eines Geräts, z.B. Farbe und Größe.
Es soll explizit nicht verwendet werden für Einstellungen: https://chat.fhir.org/#narrow/channel/179199-devices/topic/Device.20settings/near/398100646

Gedacht ist: Mit DeviceMetric wird eine Einstellungsmöglichkeit, die ein Device hat, definiert.
Für ACRIBiS: ISO/IEEE 11073 - MDC_IDC_SET_BRADY_MODE "The brady pacing mode according to the NBG standard."
Die DeviceMetric referenziert Device.
Die tatsächliche Einstellung eines Geräts zu einem Zeitpunkt wird dann per Observation abgebildet (Observation.subject ist das Device, Observation.focus die DeviceMetric).
*/

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
* patient.reference = "Patient/mii-exa-person-patient-minimal"