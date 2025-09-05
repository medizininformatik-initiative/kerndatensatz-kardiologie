Profile: MII_PR_Kardio_Observation_Rauchen
Id: mii-pr-kardio-observation-rauchen
Parent: ISiKRaucherStatus //Observation
Title: "MII PR Kardio Observation Rauchen"
Description: "Profil zur Erfassung des Rauchverhaltens einer Person im Kontext des Modul Kardiologie."
* insert PR_CS_VS_Version
* insert Publisher
// Parent: Current Smoking Status - gematik ISiK -> https://gematik.de/fhir/isik/StructureDefinition/ISiKRaucherStatus
* category 1..1 MS
* category from $observation-category-vs (required)
* category = $observation-category#social-history
// Code from Parent = SCT 77176002 "Smoker" oder LOINC 72166-2 "Tobacco smoking status"
* subject only Reference(Patient)
* encounter MS
* performer MS
// value[x] from Parent: https://simplifier.net/packages/de.gematik.isik-basismodul/4.0.0/files/2539840
* value[x] ^short = "Current Smoking Status als Loinc-Answer Code"
* hasMember only Reference(Observation or QuestionnaireResponse) //not MolecularSequence
* derivedFrom only Reference(DocumentReference or Media or QuestionnaireResponse or Observation) //not imagingstudy + not molecularsequence
// Folgende Items sind nicht Teil der Acribis-Kernscores, stehen daher - in der ersten Iteration - nicht im Fokus (nicht must-support).
* component 0..* //MS
* component ^short = "Zusätzliche Angaben zum Rauchverhalten."
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open // erlaubt jegliche category slice (names)
* component ^slicing.ordered = false
* component ^slicing.description = "Zusätzliche Angaben zum Rauchverhalten."
* component contains
    packungsjahre 0..* and //MS and
    packungenProTag 0..* and
    zigarettenProTag 0..* and
    rauchbeginn 0..* and //MS
    rauchdauer 0..* //MS
// Rauchmenge
// Packungsjahr = (#tägl.Zigaretten/20)*Anzahl Jahre die geraucht wurde
* component[packungsjahre].code = $smoking-units#pack-years
* component[packungsjahre].value[x] only Quantity
* component[packungsjahre].valueQuantity.unit = "Packungsjahre"
* component[packungsjahre].valueQuantity.system = $smoking-units //(preferred)
* component[packungsjahre].valueQuantity.code = $smoking-units#pack-years
* component[packungsjahre].valueQuantity.comparator MS 
// Beispielwerte: < 1/2 Packung; ca. 1/2 Packung; ca. 1 Packung; >= 2 Packungen
* component[packungenProTag].code = $smoking-units#packs-per-day
* component[packungenProTag].value[x] only Quantity
* component[packungenProTag].valueQuantity.unit = "Packungen pro Tag"
* component[packungenProTag].valueQuantity.system = $smoking-units //(preferred)
* component[packungenProTag].valueQuantity.code = $smoking-units#packs-per-day
* component[packungenProTag].valueQuantity.comparator MS 
* component[zigarettenProTag].code = $smoking-units#cigarettes-per-day
* component[zigarettenProTag].value[x] only integer
// Rauchdauer
* component[rauchbeginn].code = $smoking-units#rauchbeginn
* component[rauchbeginn].value[x] only dateTime // erlaubt auch fuzzy dates wie "1990" oder "1990-04"
* component[rauchbeginn].valueDateTime ^comment = "Die Angabe von 'fuzzy'-Datumsangaben mit nicht definiertem Monat oder Tag ist möglich."
* component[rauchdauer].code = $smoking-units#rauchdauer
* component[rauchdauer].value[x] only Quantity
* component[rauchdauer].valueQuantity.unit = "year" // für Jahre (nach UCUM)
* component[rauchdauer].valueQuantity.system = $ucum
* component[rauchdauer].valueQuantity.code = $ucum#a
* component[rauchdauer].valueQuantity.comparator MS
// Beispielwerte: < 1 Jahr; > 1 Jahr; > 5 Jahre; > 10 Jahre