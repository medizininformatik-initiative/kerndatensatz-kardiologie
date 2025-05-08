Profile: MII_PR_Kardio_Device
Id: mii-pr-kardio-device
Parent: Device
Title: "MII PR Kardio Device"
Description: "Profil zur Abbildung eines Device.
Im Kontext des Projekts ACRIBiS soll das Vorliegen, die Art und die Programmierung eines Herzschrittmachers/Defibrillators oder eines Herzunterstützungssystems abgebildet werden.
Dazu kann dieses Profil zusammen mit einer DeviceMetric verwendet werden."

* type from $device-type (preferred)
* type MS
* type ^comment = "Der Typ soll mit einem SNOMED-Code angegeben werden.
Für ACRIBiS empfehlen sich die folgenden Codes (Stand 01.05.2025):
 - **ICD**: 72506001 - Implantable defibrillator, device (physical object)
 - **CRT**: 704708004 - Cardiac resynchronization therapy implantable pacemaker (physical object)
 - **ICD+CRT**: 704707009 - Cardiac resynchronization therapy implantable defibrillator (physical object)
 - **LVAD**: 360066001 - Left ventricular assist device (physical object)
 - **RVAD**: 360065002 - Right ventricular assist device (physical object)
 - **BiVAD**: 360057000 - Biventricular assist device (physical object)"