// First Draft
Profile: MII_PR_Kardio_Diagnose
Id: mii-pr-kardio-diagnose
Parent: MII_PR_Diagnose_Condition //Observation

//Vererbung siehe:
// https://simplifier.net/MII-Basismodul-Diagnose-2024/MII_PR_Diagnose_Condition/~overview (MII KDS Diagnose)
// > fhir install de.medizininformatikinitiative.kerndatensatz.diagnose 2024.0.0
// https://simplifier.net/packages/hl7.fhir.r4.core/4.0.1/files/82200 (FHIR Core R4 Condition)

Title: "MII PR Kardio Diagnose"
Description: "Erster Draft eines Profils zur Abbildung einer Diagnose auf Basis von Angaben des Arztes oder Patienten (Asserter)."

* asserter 1..1 MS

// Abgrenzung Patient-derived information von vom Arzt erhobenen Diagnosen
// Erfassung unterscheidet sich abhängig von Projekten/Systemen
// --> heterogene Umsetzung an den Standorten
// Implementation Guide muss Unterschied beim Asserter/Performer hervorheben. 

// Profil auf Basis von Observation statt Diagnose/Condition?
// Starke Punkte für Anamnesefragebogenantworten/Patient-Reported-Angaben als Observation und nicht als Condition
// Profilierung muss Sicherheit/Quelle der Angabe abbilden --> Pflichtangabe Asserter
// Herausforderung liegt dann in der Suche, Implementierung abhängig von Standort/Datenerfassung
// --> Evtl. bauen wir eine Parallelwelt an Diagnosen als Observations auf 
// --> Nachfrage bei MII KDS Modul Diagnose-Gruppe?
// --> Nachfrage bei FDPG-Verantwortlichen --> Derzeit wird bei Abfragen von Diagnosen die Sicherheit bzw. 
//                                             Quelle/Asserter oft nicht abgefragt. Das wäre in Zukunft aber notwendig.