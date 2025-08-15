Profile: MII_PR_Kardio_Observation_Rauchen_AcribisAlpha
// Profil nur für Acribis-Auswertung vorgesehen. Das andere Rauchen-Profil orientiert sich am ISiK-Standard. 
Id: mii-pr-kardio-observation-rauchen-acribisalpha
Parent: ISiKLebensZustand //Observation //ISiKRaucherStatus --> wir erben hier nicht von ISiKRaucherStatus, da die Acribis Version ein anderes ValueSet benötigt.
Title: "MII PR Kardio Observation Rauchen AcribisAlpha"
Description: "Profil zur Erfassung des Rauchverhaltens einer Person im Kontext des Projekts ACRIBiS."
* insert PR_CS_VS_Version
* insert Publisher
// Parent: Current Smoking Status - gematik ISiK -> https://gematik.de/fhir/isik/StructureDefinition/ISiKRaucherStatus
* category 1..1 MS
* category from $observation-category-vs (required)
* category = $observation-category#social-history
// Code from Parent = SCT 77176002 "Smoker" oder LOINC 72166-2 "Tobacco smoking status"
// Slices sind bereits in Parent ISiKLebensZustand definiert.
* code.coding[snomed-ct] only $ISiKSnomedCTCoding
* code.coding[snomed-ct].system = $sct
* code.coding[snomed-ct].code = #77176002
* code.coding[loinc] only $ISiKLoincCoding
* code.coding[loinc].system = $loinc
* code.coding[loinc].code = #72166-2
* subject only Reference(Patient)
* encounter MS
* performer MS
// value[x] from Parent: https://simplifier.net/packages/de.gematik.isik-basismodul/4.0.0/files/2539840
* value[x] ^short = "Current Smoking Status als Loinc-Answer Code, Angabe 'Smoker' via SNOMED CT-Code."
* value[x] only CodeableConcept
* valueCodeableConcept from MII_VS_Kardio_Rauchen_AcribisAlpha (extensible)
* hasMember only Reference(Observation or QuestionnaireResponse) //not MolecularSequence
* derivedFrom only Reference(DocumentReference or Media or QuestionnaireResponse or Observation) //not imagingstudy + not molecularsequence

// Folgende Items sind nicht Teil der Acribis-Kernscores, stehen daher - in der ersten Iteration - nicht im Fokus (nicht must-support).
* component 0..* //MS
* component ^short = "Zusätzliche Angaben zum Rauchverhalten."
* component ^slicing.discriminator.type = #pattern
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
* valueCodeableConcept = $sct#77176002 "Smoker (finding)"
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
