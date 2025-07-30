Profile: MII_PR_Kardio_Score_modifizierte_Rankin_Skala
Id: mii-pr-kardio-score-modifizierte-rankin-skala
Parent: Observation //sd-mii-icu-score
Title: "MII PR Kardio Score modifizierte Rankin Skala"
Description: "Profil zur Erfassung des Outcomes eines Schlaganfalls mittels modifizierter Rankin-Skala."
* insert PR_CS_VS_Version
* insert Publisher
* category 1..1 MS
* category from $observation-category-vs (required)
* category = $observation-category#survey

* code 1..1 MS
* code.coding 1..*
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "system" //"$this"
* code.coding ^slicing.rules = #closed
* code.coding contains 
    sct 0..1 MS and
    loinc 0..1 MS
* code.coding[sct] 1..1 MS
* code.coding[sct].system = $sct
* code.coding[sct].code = $sct#1255866005 // 1255866005 = "Modified Rankin Scale score (observable entity)"
//* code.coding.display = "Modified Rankin Scale score (observable entity)"
* code.coding[loinc] 1..1 MS
* code.coding[loinc].system = $loinc
* code.coding[loinc].code = $loinc#75859-9
//* code.coding[loinc].display = "Modified rankin scale"

* subject 1..1 MS
* subject only Reference(Patient)
* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept from $mRS-vs (extensible) //(required)
* valueCodeableConcept.extension contains $data-absent-reason named data-absent-reason 0..1
* performer MS
* encounter MS
// Keine weitere Eingrenzung, um spätere Inkompatibilitäten zu vermeiden. Bsp.: Angabe von device oder focus in anderen Spezifikationen denkbar.
//* bodySite ..0
//* component ..0
//* device ..0
//* focus ..0

// Published: 1988, Van Swieten JC; Koudstaal PJ; Visser MC; Schouten HJA; Van Gijn J, 
// Online: see https://pubmed.ncbi.nlm.nih.gov/3363593/
// Lizenzbedingungen: Public Domain --> https://eprovide.mapi-trust.org/instruments/modified-rankin-scale

//_____________________________________________________________________________
Instance: example-kardio-mrs
InstanceOf: MII_PR_Kardio_Score_modifizierte_Rankin_Skala
Usage: #example
Title: "Beispielinstanz: mRS-Skala"
Description: "Beispielhafte Instanz zur Dokumentation der mRS-Skala nach einem Schlaganfall gemäß MII PR Kardio Score mRS."
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/core/modul-kardio/StructureDefinition/mii-pr-kardio-score-modifizierte-rankin-skala"
* identifier.system = "http://example.org/observation-ids"
* identifier.value = "MRS-OBS-123457"
* status = #final
* code.coding[sct].system = "http://snomed.info/sct"
* code.coding[sct].code = #1255866005
* code.coding[sct].display = "Modified Rankin Scale score (observable entity)"
* code.coding[loinc].system = "http://loinc.org"
* code.coding[loinc].code = #75859-9
* code.coding[loinc].display = "Modified rankin scale"
* subject = Reference(Patient/example-patient)
* encounter = Reference(Encounter/example-ambulant)
* effectiveDateTime = "2024-11-12T14:23:00+01:00"
* issued = "2024-11-12T15:00:00+01:00"
* performer[0] = Reference(PractitionerRole/example-role-kardiologe)
* valueCodeableConcept.coding.system = $mRS
* valueCodeableConcept.coding.code = #mRSbigger3
* valueCodeableConcept.coding.display = "Die Einstufung auf der mRS-Skala liegt bei mehr als 3 (Patient kann nicht ohne fremde Hilfe gehen)."
* note.text = "Die Einstufung auf der mRS-Skala liegt bei mehr als 3 (Patient kann nicht ohne fremde Hilfe gehen)."
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">mRS Skala: Die Einstufung auf der mRS-Skala liegt bei mehr als 3 (Patient kann nicht ohne fremde Hilfe gehen).</div>"
