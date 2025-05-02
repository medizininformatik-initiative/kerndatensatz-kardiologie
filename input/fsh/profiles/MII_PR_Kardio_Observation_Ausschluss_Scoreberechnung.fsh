Profile: MII_PR_Kardio_Observation_Ausschluss_ScoreBerechnung
Id: mii-pr-kardio-observation-ausschluss-scoreberechnung
Parent: Observation
Title: "MII_PR_Kardio_Observation_Ausschluss_ScoreBerechnung"
Description: "Profil zur Angabe bestimmter Ausschlusskriterien für die Berechnung eines kardiologischen Scores im Kontext des Projekts Acribis."
// Parent: Observation

// TODO

// Prozeduren sind normalerweise als KDS-Prozedur angelegt (cAVK Prozedur, Herzklappenerkrankung-Eingriff).

// Achtung WORDING Ausschluss meint Kriterium zur Unterscheidung, ob ein Score o.ä. berechnet werden kann. 
// Meint keinen Ausschluss für eine Studie.
// TODO: Beschreibung dahingehend anpassen

// Nur Items die wir in Acribis brauchen, die nicht aus der Prozedur ablesbar sind, sollen als Observation angelegt werden.
// 
// Einfach Ausschlusskriterien als VS für value[x] reinschreiben:
// Wert "bislang noch unbehandelt" bei Herzklappenerkrankung
//   --> Focus-Element mit Referenz auf Diagnose-Condition - nice-to-have
// Chadvasc: hochgradige Mitralklappenstenose --> Ausschluss höhergradiges Vitium

// TODO - evtl. noch Ausschlusskriterien hinzunehmen