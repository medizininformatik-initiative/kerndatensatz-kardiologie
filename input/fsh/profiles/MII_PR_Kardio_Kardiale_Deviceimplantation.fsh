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

* category 1..
* category.coding[sct] 1..
* category.coding[sct].code = #387713003 (exactly)

* code.coding[sct] 1..
* code.coding[sct] from $kardiale-deviceimplantation
* code ^comment = "Hier soll mindestens ein SNOMED-Code angegeben werden.
Für ACRIBiS müssen die folgenden Codes verwendet werden (Stand 01.05.2025):
 - **ICD**: 395218007 - Implantation of internal cardiac defibrillator (procedure)
 - **CRT**: 429064006 - Implantation of cardiac resynchronization therapy implantable pacemaker (procedure)
 - **ICD+CRT**: 1236755008 - Implantation of cardiac resynchronization defibrillator system (procedure)
 - **Herzschrittmacher ohne genauere Bezeichnung**: 307280005 - Implantation of cardiac pacemaker (procedure)
 - **LVAD**: 232967006 - Implantation of left cardiac ventricular assist device (procedure)
 - **RVAD**: 232966002 - Implantation of right cardiac ventricular assist device (procedure)
 - **BiVAD**: 232968001 - Implantation of cardiac biventricular assist device (procedure)"

* subject only Reference(Patient)
* bodySite from $koerperstelle (required)
* bodySite ^comment = "Hier soll mindestens ein SNOMED-Code angegeben werden.
Für ACRIBiS müssen die folgenden Codes verwendet werden (Stand 01.05.2025):
 - **Herzschrittmacher/Implantierter Defibrillator**: 80891009 - Heart structure (body structure)
 - **LVAD**: 87878005 - Left cardiac ventricular structure (body structure)
 - **RVAD**: 53085002 - Right cardiac ventricular structure (body structure)
 - **BiVAD**: 87878005 - Left cardiac ventricular structure (body structure) **und** 53085002 - Right cardiac ventricular structure (body structure)
"

* focalDevice 1.. MS
* focalDevice.action from $procedure-device-action-codes (required)
* focalDevice.action = $procedure-device-action-codes#129338005
* focalDevice.manipulated MS
* focalDevice.manipulated only Reference(Device)


// Anmerkung FE: Wieviele Sonden hat das Gerät --> andere Metric / erstmal nicht für Acribis --> dann für KDS Kardio gesamt