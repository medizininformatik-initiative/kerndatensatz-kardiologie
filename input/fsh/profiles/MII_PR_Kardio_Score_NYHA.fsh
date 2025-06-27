Profile: MII_PR_Kardio_Score_NYHA
Id: mii-pr-kardio-score-nyha
Parent: Observation // sd-mii-icu-score
Title: "MII PR Kardio Score NYHA"
Description: "Profil zur Erfassung der Einstufung der Stadien einer Herzinsuffizienz nach der New York Heart Association."
* insert PR_CS_VS_Version
* insert Publisher
// See https://simplifier.net/guide/GermanCoronaConsensusDataSet-ImplementationGuide/Home/GECCOCore/Demographics/Frailtyscore.guide.md?version=current
* category 1..1 MS
* category from http://hl7.org/fhir/ValueSet/observation-category (required)
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
* code.coding[sct].code = $sct#762994006 // 420816009 = "New York Heart Association Classification (assessment scale)"
//* code.coding[sct].display = "New York Heart Association Classification class (observable entity)"
* code.coding[loinc] 1..1 MS
* code.coding[loinc].system = $loinc
* code.coding[loinc].code = $loinc#93124-6 // 420816009 = "New York Heart Association Classification (assessment scale)"
//* code.coding[loinc].display = "New York Heart Association Functional Classification panel"
* subject 1..1 MS
* subject only Reference(Patient)
* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept from $nyha-class-vs (required)
* performer MS
* encounter MS
// Wir grenzen hier nicht weiter ein, um spätere Inkompatibilitäten zu vermeiden. Bspw. ist die Angabe eine device oder focus auf eine andere ressource in anderen Spezifikationen durchaus denkbar.
//* bodySite ..0
//* component ..0
//* device ..0
//* focus ..0

// License: Credit appropietly to New York Heart Association
// Online: see https://manual.jointcommission.org/releases/TJC2025B/DataElem0439.html

//_____________________________________________________________________________
Instance: example-kardio-nyha
InstanceOf: MII_PR_Kardio_Score_NYHA
Usage: #example
Title: "Beispielinstanz: NYHA-Klassifikation"
Description: "Beispielhafte Instanz zur Dokumentation der NYHA-Klassifikation bei Herzinsuffizienz gemäß MII PR Kardio Score NYHA."

* identifier.system = "http://example.org/observation-ids"
* identifier.value = "NYHA-OBS-123456"
* status = #final
* code.coding[sct].system = "http://snomed.info/sct"
* code.coding[sct].code = #762994006
* code.coding[sct].display = "New York Heart Association Classification class (observable entity)"
* code.coding[loinc].system = "http://loinc.org"
* code.coding[loinc].code = #93124-6
* code.coding[loinc].display = "New York Heart Association Functional Classification panel"
* subject = Reference(Patient/example-patient)
* encounter = Reference(Encounter/example-ambulant)
* effectiveDateTime = "2024-11-12T14:23:00+01:00"
* issued = "2024-11-12T15:00:00+01:00"
* performer[0] = Reference(PractitionerRole/example-role-kardiologe)
* valueCodeableConcept.coding.system = $sct
* valueCodeableConcept.coding.code = $sct#421704003 
* valueCodeableConcept.coding.display = "New York Heart Association Classification - Class II"
* note.text = "Patient berichtet über leichte Einschränkungen bei moderater körperlicher Aktivität. Keine Beschwerden in Ruhe."
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">NYHA Klassifikation: Klasse II. Patient hat in Ruhe keine Beschwerden, leichte Symptome bei Aktivität.</div>"

//_____________________________________________________________________________
Instance: example-role-kardiologe
InstanceOf: PractitionerRole
Title: "Rolle: Kardiologe im Klinikum"
Description: "Beispielhafte Rolle eines Kardiologen zur Verwendung in performer-Referenzen."
//* practitioner = Reference(Practitioner/example-arzt) //kein Verweis auf best. Person, sondern nur auf Rolle
* organization = Reference(Organization/example-klinikum)
* code = $sct#17561000 "Cardiologist"
* specialty = $sct#394579002 "Cardiology"