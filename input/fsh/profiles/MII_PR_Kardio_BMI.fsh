// First Draft
Profile: MII_PR_Kardio_BMI
Id: mii-pr-kardio-bmi
Parent: Observation
//observation-de-vitalsign-koerpergewicht //http://fhir.de/StructureDefinition/observation-de-vitalsign-koerpergewicht //ISiKKoerpergewicht
//sd-mii-icu-koerpergewicht //https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/koerpergewicht

Title: "MII PR Kardio BMI"
Description: "Erster Draft eines Profils für eine Ressource zur Abbildung des Body Mass Index (BMI)."

* status MS
* category 1..2 MS
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "system"
* category ^slicing.rules = #open
* category contains 
    VSCat 0..1 MS and
    sct 1..1 MS
* category[VSCat] ^sliceName = "VSCat"
* category[VSCat] ^mustSupport = true
* category[VSCat].coding MS
* category[VSCat].coding.system 1.. MS
* category[VSCat].coding.code 1.. MS
* category[VSCat].coding.display
* category[sct] = $sct#248326004
* category[sct] ^sliceName = "sct"
* category[sct] ^mustSupport = true
* category[sct].coding MS
* category[sct].coding.system 1.. MS
* category[sct].coding.code 1.. MS
* category[sct].coding.display
* code MS
* code only CodeableConcept
* code = $loinc#39156-5 "Body Mass Index"
* code.coding 2..2 MS
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    loinc 1..1 MS and
    snomed 1..1 MS
* code.coding[loinc] from $loinc (required)
* code.coding[loinc] = $loinc#39156-5
* code.coding[loinc].system
* code.coding[loinc].code
* code.coding[loinc].display
* code.coding[snomed] = $sct#60621009
* code.coding[snomed].system
* code.coding[snomed].code
* code.coding[snomed].display
* subject MS
* subject only Reference(Patient)
* effective[x] 1..1 MS
* effective[x] only dateTime or Period //as defined in http://fhir.de/StructureDefinition/observation-de-vitalsign
* value[x] 1..1  MS
* value[x] only Quantity
* value[x] = $unitsofmeasure#kg/m2 "kg/m²"
* valueQuantity 1..1 MS
* dataAbsentReason obeys mii-kardio-value-dataabsentreason

// interpretation from customValueSet?
* bodySite 0..0
* component 0..
// Component slicen und Gewicht+Groesse definieren/referenzieren?