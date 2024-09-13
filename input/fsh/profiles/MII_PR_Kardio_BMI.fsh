// First Draft
Profile: MII_PR_Kardio_BMI
Id: mii-pr-kardio-bmi
Parent: observation-de-vitalsign-koerpergewicht
//sd-mii-icu-koerpergewicht
//observation-de-vitalsign-koerpergewicht //http://fhir.de/StructureDefinition/observation-de-vitalsign-koerpergewicht
//sd-mii-icu-koerpergewicht

Title: "MII PR Kardio BMI"
Description: "Erster Draft eines Profils für eine Ressource zur Abbildung des Body Mass Index (BMI)."

* status MS
* category 1..2 MS
* category contains 
    //VSCat 0..1 MS and
    sct 1..1 MS
* category[VSCat] ^sliceName = "VSCat"
* category[VSCat] ^mustSupport = true
* category[VSCat].coding MS
* category[VSCat].coding.system 1.. MS
* category[VSCat].coding.code 1.. MS
* category[VSCat].coding.display MS
* category[sct] = $sct#248326004
* category[sct] ^sliceName = "sct"
* category[sct] ^mustSupport = true
* category[sct].coding MS
* category[sct].coding.system 1.. MS
* category[sct].coding.code 1.. MS
* category[sct].coding.display MS
* code MS
* code only CodeableConcept
* code ^code = $loinc#39156-5 "Body Mass Index"
* code.coding 2..2 MS
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
// ... Pattern korrekt festlegen?
// * code ^code = $loinc#39156-5 "Body Mass Index"

* code.coding[loinc] from $loinc (required)
* code.coding[loinc] = $loinc#39156-5 //(required)
* code.coding[loinc].system MS
* code.coding[loinc].code MS
* code.coding[loinc].display MS
* code.coding[snomed] = $sct#60621009 //(required)
* code.coding[snomed].system MS
* code.coding[snomed].code MS
* code.coding[snomed].display MS
* subject MS
* effective[x] MS
* effectiveDateTime MS
* effectiveDateTime ^sliceName = "effectiveDateTime"
* value[x] MS
* valueQuantity = $unitsofmeasure#kg/m2 "kg/m²"
* valueQuantity 1..1 MS
* dataAbsentReason obeys mii-kardio-1

* bodySite 0..0
* component 0..0

Invariant: mii-kardio-1
Description: "If there is no Observation.value, a dataAbsentReason must be given."
* severity = #error
* expression = "value.exists().not() implies dataAbsentReason.exists()"