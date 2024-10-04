// First Draft

// Generell ist zu überlegen, ob es Sinn ergibt über das Modul Person hinaus, einen Kardio-Patienten zu profilieren.
// Abstimmung mit Ansprechpartnern des KDS-Modul Person suchen!

// Übersicht Kardio-Anforderungen:                                  (kein Anspruch auf Vollständigkeit)
// Alter des Patienten --> derzeit nur Geburtsdatum (ließe sich mit Zeitpunkt der Untersuchung/Datenaufnahme berechnen)
// Biologisches Geschlecht --> alternative optionale Angabe neben administrativem Geschlecht

Profile: MII_PR_Kardio_Patient
Id: mii-pr-kardio-patient
Parent: MII_PR_Person_Patient //Patient

Title: "MII PR Kardio Patient"
Description: "Erster Draft eines Profils zur Abbildung eines Patienten in der Kardiologie."

* birthDate.extension contains AgeExtension named Alter 0..1 MS

* address[Strassenanschrift].extension contains RegionExtension named Region 0..1 MS