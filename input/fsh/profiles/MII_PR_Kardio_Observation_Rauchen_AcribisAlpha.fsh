Profile: MII_PR_Kardio_Observation_Rauchen_AcribisAlpha
// Offene Diskussion:
// Eventuell brauchen wir hier ein zusätzliches Profil, um die Angabe ja/nein/unbekannt aus dem DS zu erlauben. 
// Nur für Acribis-Auswertung. Das andere Rauchen-Profil ist standardbasiert. 
// TODO Valueset anpassen, sodass Acribis-Antworten aus DS unterstützt werden oder modifierExtension mit Ja, ich rauche (aktuell)
Id: mii-pr-kardio-observation-rauchen-acribisalpha
Parent: ISiKRaucherStatus //Observation
Title: "MII PR Kardio Observation Rauchen"
Description: "Profil zur Erfassung des Rauchverhaltens einer Person im Kontext von ACRIBiS."
* insert PR_CS_VS_Version
* insert Publisher
// Parent: Current Smoking Status - gematik ISiK -> https://gematik.de/fhir/isik/StructureDefinition/ISiKRaucherStatus
* category 1..1 MS
* category from $observation-category-vs (required)
* category = $observation-category#social-history
// Code from Parent = SCT 77176002 "Smoker" oder LOINC 72166-2 "Tobacco smoking status"
* subject only Reference(Patient)
//* focus ..0
* encounter MS
* performer MS
// value[x] from Parent: https://simplifier.net/packages/de.gematik.isik-basismodul/4.0.0/files/2539840
* value[x] ^short = "Current Smoking Status als Loinc-Answer Code"
//* bodySite ..0
//* specimen ..0
* hasMember only Reference(Observation or QuestionnaireResponse) //not MolecularSequence
* derivedFrom only Reference(DocumentReference or Media or QuestionnaireResponse or Observation) //not imagingstudy + not molecularsequence
// Folgende Items sind nicht Teil der Acribis-Kernscores, stehen daher - in der ersten Iteration - nicht im Fokus (nicht must-support).
// TODO in Zukunft
* component 0..* //MS
* component ^short = "Zusätzliche Angaben zum Rauchverhalten als Komponenten."
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "$this"
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

//_____________________________________________________________________________
Instance: Example-Kardio-Observation-Rauchen-acribisalpha
InstanceOf: MII_PR_Kardio_Observation_Rauchen_AcribisAlpha
Title: "Beispiel für Raucherstatus im Kontext von ACRIBiS"
Description: "Eine Beispielinstanz zur Darstellung des Rauchverhaltens einer Person gemäß dem Profil MII_PR_Kardio_Observation_Rauchen."
Usage: #example

* status = #final
* category = $observation-category#social-history "Social History"
* code = http://loinc.org#72166-2 "Tobacco smoking status"
* subject = Reference(Patient/ExamplePatient)
* encounter = Reference(Encounter/ExampleEncounter)
* effectiveDateTime = "2023-12-01"
* performer = Reference(Practitioner/example-role-kardiologe)
* valueCodeableConcept = http://terminology.hl7.org/CodeSystem/observation-smoking-status#current-every-day-smoker "Current every day smoker"
// Komponenten zur weiterführenden Beschreibung des Rauchverhaltens
* component[packungsjahre].code = $smoking-units#pack-years
* component[packungsjahre].valueQuantity.value = 35
* component[packungsjahre].valueQuantity.unit = "Packungsjahre"
* component[packungsjahre].valueQuantity.system = $smoking-units
* component[packungsjahre].valueQuantity.code = #pack-years
* component[packungsjahre].valueQuantity.comparator = #> 
* component[packungenProTag].code = $smoking-units#packs-per-day
* component[packungenProTag].valueQuantity.value = 1
* component[packungenProTag].valueQuantity.unit = "Packungen pro Tag"
* component[packungenProTag].valueQuantity.system = $smoking-units
* component[packungenProTag].valueQuantity.code = #packs-per-day
* component[zigarettenProTag].code = $smoking-units#cigarettes-per-day
* component[zigarettenProTag].valueInteger = 20
* component[rauchbeginn].code = $smoking-units#rauchbeginn
* component[rauchbeginn].valueDateTime = "1990" // fuzzy date erlaubt
* component[rauchdauer].code = $smoking-units#rauchdauer
* component[rauchdauer].valueQuantity.value = 35
* component[rauchdauer].valueQuantity.unit = "year"
* component[rauchdauer].valueQuantity.system = $ucum
* component[rauchdauer].valueQuantity.code = #a
* component[rauchdauer].valueQuantity.comparator = #>=
