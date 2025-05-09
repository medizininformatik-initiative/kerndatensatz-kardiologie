Profile: MII_PR_Kardio_Observation_Rauchen
Id: mii-pr-kardio-observation-rauchen
Parent: ISiKRaucherStatus //Observation //https://gematik.de/fhir/isik/StructureDefinition/ISiKRaucherStatus
Title: "MII_PR_Kardio_Observation_Rauchen"
Description: "Profil zur Erfassung des Rauchverhaltens einer Person im Kontext von ACRIBiS."

// Current Smoking Status - gematik ISiK --> https://simplifier.net/packages/de.gematik.isik-basismodul/4.0.3/files/2736495
// Code = SCT 77176002 oder LOINC 72166-2

// value[x] from https://gematik.de/fhir/isik/ValueSet/current-smoking-status-uv-ips

// BEZUG AUF PATIENT MS 1..1 TODO

// Überlegung für Zukunft fuer Allgemeinen Datensatz:
  // Fuer weitere Details --> neue Observatin zu "history of tobacco use"
  // history of tobacco use --> pack years und dauer rauche seit x jahren

// Obacht: Nachfolgende Items sind nicht Teil der Acribis-Kernscores, stehen daher - in der ersten Iteration - nicht im Fokus. 
//         Um das auszudrücken ist must-support nicht gesetzt

* component 0..* //MS //BackboneElement?
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "$this"
* component ^slicing.rules = #open // erlaubt jegliche category slice (names)
* component ^slicing.ordered = false
* component ^slicing.description = "Zusätzliche Angaben zum Rauchverhalten."
* component contains
    packungsjahre 0..1 and //MS and
    packungenProTag 0..1 and
    zigarettenProTag 0..1 and
    rauchbeginn 0..* and //MS
    rauchdauer 0..* //MS

* component[packungsjahre].code = $smoking-units#pack-years
* component[packungsjahre].value[x] only Quantity
* component[packungsjahre].valueQuantity.unit = "Packungsjahre"
* component[packungsjahre].valueQuantity.system = $smoking-units //(preferred)
* component[packungsjahre].valueQuantity.code = $smoking-units#pack-years
* component[packungsjahre].valueQuantity.comparator 1..1 //MS 
// Beispielwerte: < 1/2 Packung; ca. 1/2 Packung; ca. 1 Packung; >= 2 Packungen

* component[packungenProTag].code = $smoking-units#packs-per-day
* component[packungenProTag].value[x] only Quantity
* component[packungenProTag].valueQuantity.unit = "Packungen pro Tag"
* component[packungenProTag].valueQuantity.system = $smoking-units //(preferred)
* component[packungenProTag].valueQuantity.code = $smoking-units#packs-per-day
* component[packungenProTag].valueQuantity.comparator 1..1 //MS 

* component[zigarettenProTag].code = $smoking-units#cigarettes-per-day
* component[zigarettenProTag].value[x] only integer

// Rauchdauer
//* component[rauchbeginn].code = $smoking-units#cigarettes-per-day TODO
* component[rauchbeginn].value[x] only dateTime // erlaubt auch fuzzy dates wie "1990" oder "1990-04"
* component[rauchbeginn].valueDateTime ^comment = "Die Angabe von 'fuzzy'-Datumsangaben mit nicht definiertem Monat oder Tag ist möglich."

//* component[rauchdauer].code = $smoking-units#cigarettes-per-day TODO
* component[rauchdauer].value[x] only Quantity
* component[rauchdauer].valueQuantity.unit = "year" // für Jahre (nach UCUM)
* component[rauchdauer].valueQuantity.system = $unitsofmeasure
* component[rauchdauer].valueQuantity.code = $unitsofmeasure#a
* component[rauchdauer].valueQuantity.comparator 1..1 //MS
// https://github.com/ucum-org/ucum/blob/main/common-units/TableOfExampleUcumCodesForElectronicMessaging.xlsx
// Beispielwerte: < 1 Jahr; > 1 Jahr; > 5 Jahre; > 10 Jahre