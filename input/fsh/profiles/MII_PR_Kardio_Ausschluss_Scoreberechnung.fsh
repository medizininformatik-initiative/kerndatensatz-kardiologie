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

// TODO: Statt Grund in value, alle Gründe in component
* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept from MII_VS_Kardio_Ausschlusskriterium_ACRIBiS_Scores (preferred)