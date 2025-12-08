Profile: MII_PR_Kardio_Device
Id: mii-pr-kardio-device
Parent: Device
Title: "MII PR Kardio Device"
Description: "Profil zur Abbildung eines implantierten Herzschrittmachers, Defibrillators oder ventrikulären Unterstützungssystems."

* insert PR_CS_VS_Version
* insert Publisher

* ^status = #active
* ^experimental = false
* ^date = "2025-12-08"

* status MS

* expirationDate MS
* expirationDate ^comment = "Dieses Feld kann (ergänzend zum Status) genutzt werden, um anzugeben, dass ein Gerät nicht mehr verwendbar ist oder seit wann es nicht mehr verwendet wird. In solchen Fällen sollte davon ausgegangen werden, dass das Gerät nicht mehr implantiert ist und daher bei der Bestimmung aktuell implantierter Geräte nicht berücksichtigt werden sollte."

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

* patient MS