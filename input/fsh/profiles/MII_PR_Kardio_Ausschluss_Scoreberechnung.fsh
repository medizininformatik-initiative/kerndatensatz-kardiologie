Profile: MII_PR_Kardio_Ausschluss_Scoreberechnung
Id: mii-pr-kardio-ausschluss-scoreberechnung
Parent: Observation
Title: "MII PR Kardio Ausschluss Scoreberechnung"
Description: "Profil zur Angabe bestimmter Ausschlusskriterien für die Berechnung eines kardiologischen Scores im Kontext des Projekts Acribis.
Vorliegender Wert beschreibt ein Kriterium, das - bei Vorliegen - das referenzierte Subject von der Berechnung für Scores ausschließen kann."

* insert PR_CS_VS_Version
* insert Publisher

// TODO Code für Ressource festlegen
* code MS
* code.coding 1.. MS
* code.coding = $sct#271000124103 //  Medical reason for exclusion from performance measure (observable entity)

* subject 1.. MS
* subject only Reference(Patient)

// Nur Items die wir in Acribis brauchen, die nicht aus der Prozedur ablesbar sind, sollen als Observation angelegt werden.
// Prozeduren sind normalerweise als KDS-Prozedur angelegt (cAVK Prozedur, Herzklappenerkrankung-Eingriff).
  //   --> Focus-Element mit Referenz auf Diagnose-Condition oder Prozedur - nice-to-have
* focus MS

* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept from MII_VS_Kardio_Ausschlusskriterium_ACRIBiS_Scores (preferred)

Instance: mii-exa-kardio-ausschluss-scoreberechnung
InstanceOf: MII_PR_Kardio_Ausschluss_Scoreberechnung
Title: "MII EXA Kardio Ausschluss Scoreberechnung"
Description: "Beispiel einer Observation für das Ausschlusskriterium unbehandeltes, höhergradiges Vitium"
Usage: #example

* status = #final
* code.coding = $sct#271000124103 "Medical reason for exclusion from performance measure (observable entity)"
* subject.display = "Beispielpatient"
* effectiveDateTime = "2025-05-21T17:35:22+02:00"
* performer.display = "Beispielkardiologe"
* valueCodeableConcept.coding = MII_CS_Kardio_Ausschlusskriterium_ACRIBiS_Scores#hv "Ausschlusskriterium unbehandeltes, höhergradiges Vitium"