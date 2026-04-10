Profile: MII_PR_Kardio_Observation_Rauchen
Id: mii-pr-kardio-observation-rauchen
Parent: ISiKRaucherStatus //Observation
Title: "MII PR Kardio Observation Rauchen"
Description: "Profil zur Erfassung des Rauchverhaltens einer Person im Kontext des Modul Kardiologie."
* insert PR_CS_VS_Version
* insert Publisher

* ^status = #draft

// Parent: Current Smoking Status - gematik ISiK -> https://gematik.de/fhir/isik/StructureDefinition/ISiKRaucherStatus
* category 1..1 MS
* category from $observation-category-vs (required)
* category = $observation-category#social-history
// Code from Parent = SCT 77176002 "Smoker" (finding) oder LOINC 72166-2 "Tobacco smoking status"
* code.coding[loinc] only $ISiKLoincCoding
* code.coding[loinc] = $loinc#72166-2
* subject only Reference(Patient)
* encounter MS
* performer MS
// value[x] from Parent: https://simplifier.net/packages/de.gematik.isik-basismodul/4.0.0/files/2539840
* value[x] ^short = "Current Smoking Status als Loinc-Answer Code (siehe ISiK VS: CurrentSmokingStatusUvIps)"
* value[x] only CodeableConcept
* valueCodeableConcept from CurrentSmokingStatusUvIps (required)
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
    rauchzeitraum 0..* and
    rauchbeginn 0..1 and
    rauchdauer 0..* //MS //and

// Rauchmenge
// Packungsjahr = (#tägl.Zigaretten/20)*Anzahl Jahre die geraucht wurde. => 401201003 // Cigarette pack-years
// Beispielwerte: < 1/2 Packung; ca. 1/2 Packung; ca. 1 Packung; >= 2 Packungen
* component[packungsjahre].code = $sct#401201003 // (782516008) = Number of calculated pack years for cumulative lifetime tobacco exposure (observable entity)
* component[packungsjahre].value[x] only Quantity
* component[packungsjahre].value[x] MS
* component[packungsjahre].valueQuantity 1..1 MS
* component[packungsjahre].valueQuantity.unit = "{pack-years}"
* component[packungsjahre].valueQuantity.system = $ucum
* component[packungsjahre].valueQuantity.code = $ucum#{pack-years}
* component[packungsjahre].valueQuantity.comparator MS 

// Packungen pro Tag ?? Angabe zur Berechnung der Packungsjahre
* component[packungenProTag].code = $sct#230056004 // Cigarette consumption (observable entity)
* component[packungenProTag].value[x] only Quantity
* component[packungenProTag]..valueQuantity 1..1 MS
* component[packungenProTag].valueQuantity.unit = "{packs-per-day}"
* component[packungenProTag].valueQuantity.system = $ucum
* component[packungenProTag].valueQuantity.code = $ucum#{packs-per-day}
* component[packungenProTag].valueQuantity.comparator MS

// Rauchzeitraum (Period) | Tobacco smoking consumption (observable entity) --> Code passt nicht direkt auf den abzubildenden Wert. Angabe wird erstmal nicht benoetigt.
//* component[rauchzeitraum].code = $sct#266918002
//* component[rauchzeitraum].value[x] only Period
//* component[rauchzeitraum].valuePeriod.start 1..1 MS
//* component[rauchzeitraum].valuePeriod.end 0..1 MS
//* component[rauchzeitraum].valuePeriod obeys rauchzeitraum-start-vor-ende

// Age at starting smoking (observable entity)
* component[rauchbeginn].code = $sct#228488005
* component[rauchbeginn].value[x] only Quantity
* component[rauchbeginn].valueQuantity.value 1..1 MS
* component[rauchbeginn].valueQuantity.unit = "year"
* component[rauchbeginn].valueQuantity.system = $ucum
* component[rauchbeginn].valueQuantity.code = $ucum#a

// Total time smoked (observable entity)
* component[rauchdauer].code = $sct#228487000
* component[rauchdauer].value[x] only Quantity
* component[rauchdauer].valueQuantity.value 1..1 MS
* component[rauchdauer].valueQuantity.unit = "year"
* component[rauchdauer].valueQuantity.system = $ucum
* component[rauchdauer].valueQuantity.code = $ucum#a
* component[rauchdauer].valueQuantity.comparator MS
