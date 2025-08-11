Profile: MII_PR_Kardio_Observation_Ausschluss_Scoreberechnung
Id: mii-pr-kardio-observation-ausschluss-scoreberechnung
Parent: Observation
Title: "MII PR Kardio Observation Ausschluss Scoreberechnung"
Description: "Profil zur Angabe bestimmter Ausschlusskriterien für die Berechnung eines kardiologischen Scores im Kontext des Projekts Acribis."
* insert PR_CS_VS_Version
* insert Publisher

// Meint keinen Ausschluss für eine Studie!
* ^description = "Vorliegender Wert beschreibt ein Kriterium, das - bei Vorliegen - das referenzierte Subject von der Berechnung für Scores ausschließen kann."

// TODO Code für Ressource festlegen
* code MS
* code.coding 1.. MS
* code.coding.system 1.. MS
* code.coding.code 1.. MS
* code.coding = $sct#271000124103     //  Medical reason for exclusion from performance measure (observable entity) | TODO Diskutieren, ob Exclude + Score-Code + Component für Ausschlussgrund sinnvoll zu profilieren wäre?

// Patientenbezug vorschreiben MS! TODO
* subject 1..1 MS
* subject only Reference(Patient)

// Nur Items die wir in Acribis brauchen, die nicht aus der Prozedur ablesbar sind, sollen als Observation angelegt werden.
// Prozeduren sind normalerweise als KDS-Prozedur angelegt (cAVK Prozedur, Herzklappenerkrankung-Eingriff).
  //   --> Focus-Element mit Referenz auf Diagnose-Condition oder Prozedur - nice-to-have
* focus MS

// Ausschlusskriterien als "Acribis VS" für value[x] reinschreiben:
  // Wert "bislang noch unbehandelt" bei Herzklappenerkrankung --> Treatment not indicated (situation)??
    // Herzklappenerkrankung allgemein →  (Heart valve disorder) or  Heart valve stenosis (disorder)
    // Mitralklappenerkrankung →  (Disorder of mitral valve) or Severe mitral valve stenosis (disorder) = SCTID: 838450006
    // Aortenklappenerkrankung →  (Disorder of aortic valve)
    // Trikuspidalklappenerkrankung →  (Disorder of tricuspid valve)
    // Pulmonalklappenerkrankung →  (Disorder of pulmonary valve)
  // Congenital heart disease (disorder) --> SCTID: 13213009 (sonst schon als Diagnose?)
  // Chadvasc: hochgradige Mitralklappenstenose --> Ausschluss höhergradiges Vitium
* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept from MII_VS_Kardio_Ausschlusskriterium_ACRIBiS_Scores (preferred)

// TODO - evtl. noch weitere Ausschlusskriterien zum VS hinzunehmen
// - angeborener herzfehler --> COdes prüfen und hinzufügen
// * $mRS#mRSbigger3 "asdasd" //TODO ??

Instance: mii-exa-kardio-observation-ausschluss-scoreberechnung
InstanceOf: MII_PR_Kardio_Observation_Ausschluss_Scoreberechnung
Title: "MII EXA Kardio Observation Ausschluss Scoreberechnung"
Description: "Beispiel einer Observation für das Ausschlusskriterium unbehandeltes, höhergradiges Vitium"
Usage: #example

* status = #final
* code.coding = $sct#271000124103 "Medical reason for exclusion from performance measure (observable entity)"
* subject.display = "Beispielpatient"
* effectiveDateTime = "2025-05-21T17:35:22+02:00"
* performer.display = "Beispielkardiologe"
* valueCodeableConcept.coding = MII_CS_Kardio_Ausschlusskriterium_ACRIBiS_Scores#hv "Ausschlusskriterium unbehandeltes, höhergradiges Vitium"