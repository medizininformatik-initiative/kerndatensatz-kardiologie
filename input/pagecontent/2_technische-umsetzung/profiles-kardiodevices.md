# Profile: KardioDevices

Diese Gruppe umfasst die Profilierung kardialer (Implantat-)Geräte: das physische Gerät, die Implantationsprozedur sowie die Geräteprogrammierung und den NBG-Schrittmachermodus.

## Übersicht

| Profil | Resource | Kurzbeschreibung |
|---|---|---|
| [Kardiale Device-Implantation](#kardiale-device-implantation) | Procedure | Implantation von Schrittmacher, ICD, CRT, LVAD/BiVAD |
| [Device](#device) | Device | Allgemeines Device-Profil |
| [Geräteprogrammierung](#gerteprogrammierung) | DeviceMetric | Erfassung der Geräteprogrammierung (z.B. VVI-Modus) |
| [NBG-Schrittmachermodus](#nbg-schrittmachermodus) | Observation | NBG-Schrittmachermodus-Codierung |

---

## Kardiale Device-Implantation

**Profil:** [MII_PR_Kardio_Kardiale_Deviceimplantation](StructureDefinition-mii-pr-kardio-kardiale-deviceimplantation.html) · **Resource:** Procedure · **Id:** mii-pr-kardio-kardiale-deviceimplantation

### Beschreibung
Profil zur Abbildung einer Implantation eines Herzschrittmachers, Kardioverter-Defibrillators oder ventrikulären Unterstützungssystems.

### Kern-Elemente
* `code` — SNOMED CT (+/- OPS) Code für die Implantation
* `performed[x]` — Implantationsdatum (dateTime)
* `bodySite` — Implantationsstelle (Herz, linker Ventrikel, rechter Ventrikel)
* `focalDevice.manipulated` — Reference(Device) des implantierten Geräts
* `subject` — Reference(Patient)

### Wertebereiche
* **SNOMED CT:**
  * 395218007 (Implantation of internal cardiac defibrillator)
  * 429064006 (Implantation of cardiac resynchronization therapy pacemaker)
  * 1236755008 (Implantation of cardiac resynchronization defibrillator)
  * 232967006 (Implantation of left cardiac ventricular assist device)
* **OPS:**
  * 5-31x (implantation of cardiac devices)

### Geräteeinzelheiten
Das implantierte Device (Schrittmacher, ICD, CRT, LVAD, BiVAD) wird über `focalDevice.manipulated` referenziert.

### Beispiele
* MII_EXA_Kardio_Kardiale_Deviceimplantation_ICD
* MII_EXA_Kardio_Device_ICD

### Verwandte Profile
* Device — für das Geräteobjekt selbst
* Geraeteprogrammierung — für die Geräteeinstellungen
* NBG-Schrittmachermodus — für den Schrittmachermodus

---

## Device

**Profil:** [MII_PR_Kardio_Device](StructureDefinition-mii-pr-kardio-device.html) · **Resource:** Device · **Id:** mii-pr-kardio-device

### Beschreibung
Allgemeines Device-Profil für kardiale Geräte.

### Kern-Elemente
* `identifier` — Seriennummer / Gerätekennummern
* `deviceName` — Gerätename (Herstellermodell)
* `modelNumber` — Modellnummer
* `manufacturer` — Hersteller
* `type` — Gerätetyp (SNOMED CT)
* `patient` — Reference(Patient) bei Implantation

### Wertebereiche
* **DeviceType:** MII_VS_Kardio_Geraetetyp_SNOMEDCT (Schrittmacher, ICD, CRT, LVAD, BiVAD)
* **Manufacturer:** Freitext / SNOMED CT

### Verwendung
Das Device-Profil beschreibt das physikalische Gerät. Die Implantation selbst wird über das Procedure-Profil (Kardiale_Deviceimplantation) dokumentiert.

### Mapping
* **SNOMED CT:** 252169002 (Cardiac pacemaker), 385809003 (Implantable cardioverter defibrillator)

### Beispiele
* MII_EXA_Kardio_Kein_Device — Ausschluss einer Device-Implantation

### Verwandte Profile
* Kardiale_Deviceimplantation — für die Implantationsprozedur
* Geraeteprogrammierung — für Geräteeinstellungen

---

## Geräteprogrammierung

**Profil:** [MII_PR_Kardio_Geraeteprogrammierung](StructureDefinition-mii-pr-kardio-geraeteprogrammierung.html) · **Resource:** DeviceMetric · **Id:** mii-pr-kardio-geraeteprogrammierung

### Beschreibung
Mit dieser Observation kann die Geräteprogrammierung, d.h. die DeviceMetric *Schrittmachermodus*, eines Gerätes zu einem bestimmten Zeitpunkt abgebildet werden.

### Kern-Elemente
* `type` — DeviceMetric Typ (Schrittmachermodus)
* `valueCodeableConcept` — Modus (VVI, DDD, AAI, etc.) via MII_VS_Kardio_Geraeteprogrammierung_MDC
* `date` — Datum der Programmierung
* `device` — Reference(Device) des programmierten Geräts

### Wertebereiche
* **Modus:** MII_VS_Kardio_Geraeteprogrammierung_MDC (Mortara Coding)
* **DeviceMetricType:** MDC (ISO 11073)

### NBG-Schrittmachermodus
Die NBG-Klassifikation (North American Society of Pacing and Electrophysiology) beschreibt den Schrittmachermodus mit drei Buchstaben:
* **1. Buchstabe:** Stimulierte Kammer (A=Atrium, V=Ventrikel, D=beide, O=keine)
* **2. Buchstabe:** Sensierte Kammer (A, V, D, O)
* **3. Buchstabe:** Reaktionsverhalten (T=Triggered, R=Rate-modulated, O=none, D=dual)

Beispiele: VVI, DDD, AAI, VDD, DDDR.

### Beispiele
* MII_EXA_Kardio_Geräteprogrammierung_VVI

### Verwandte Profile
* NBG-Schrittmachermodus — für die NBG-Codierung
* Kardiale_Deviceimplantation — für die Implantation

---

## NBG-Schrittmachermodus

**Profil:** [MII_PR_Kardio_NBG_Schrittmachermodus](StructureDefinition-mii-pr-kardio-nbg-schrittmachermodus.html) · **Resource:** Observation · **Id:** mii-pr-kardio-nbg-schrittmachermodus

### Beschreibung
Dieses Profil bildet die Einstellungsmöglichkeit eines Herzschrittmachers nach dem NBG-Standard ab.

### Kern-Elemente
* `code` — Observation Code für NBG-Schrittmachermodus
* `valueCodeableConcept` — Modus als CodeableConcept (z.B. "VVI", "DDD")
* `component.code` — Einzelne NBG-Buchstaben (A/V/O)
* `effective[x]` — Datum der Einstellung
* `device` — Reference(Device) des Schrittmachers

### Wertebereiche
* **NBG-Modus:** SNOMED CT oder MDC Codes für die Schrittmachermodi
* **Kodierung:** Die Modi werden als CodeableConcept mit SNOMED CT oder MDC Codes abgebildet

### Anwendung
Das Profil ist speziell für die Erfassung des NBG-Schrittmachermodus konzipiert, der aus drei Buchstaben besteht:
1. Stimulierter Raum (A=Atrium, V=Ventrikel, D=beide, O=keine)
2. Sensierter Raum (A, V, D, O)
3. Reaktionsverhalten (T=Triggered, R=Rate-modulated, O=none, D=dual)

### Beispiele
* VVI (ventrikulär stimuliert, ventrikulär sensiert, ausgeschaltet)
* DDD (beide Kammern stimuliert und sensiert, doppelte Reaktion)
* AAI (atriell stimuliert, atriell sensiert, ausgeschaltet)

### Verwandte Profile
* Geraeteprogrammierung — für die allgemeine Geräteprogrammierung
* EKG-Annotation — für elektrische Aktivität
