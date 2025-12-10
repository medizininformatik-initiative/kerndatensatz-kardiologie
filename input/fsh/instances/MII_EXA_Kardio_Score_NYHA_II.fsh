Instance: mii-exa-kardio-score-nyha-ii
InstanceOf: MII_PR_Kardio_Score_NYHA
Usage: #example
Title: "MII EXA Kardio Score NYHA II"
Description: "Beispielhafte Instanz zur Dokumentation der NYHA-Klassifikation bei Herzinsuffizienz gemäß MII PR Kardio Score NYHA."

* identifier.system = "http://example.org/observation-ids"
* identifier.value = "NYHA-OBS-123456"
* status = #final
* code.coding[sct] = $sct#762994006 "New York Heart Association Classification class"
* code.coding[loinc] = $loinc#93124-6 "New York Heart Association Functional Classification panel"
* subject.display = "Beispielpatient"
* encounter.display = "Beispielfall"
* effectiveDateTime = "2024-11-12T14:23:00+01:00"
* issued = "2024-11-12T15:00:00+01:00"
* performer[0] = Reference(PractitionerRole/mii-exa-kardio-rolle-kardiologe)
* valueCodeableConcept = $sct#421704003 "New York Heart Association Classification - Class II"
* note.text = "Patient berichtet über leichte Einschränkungen bei moderater körperlicher Aktivität. Keine Beschwerden in Ruhe."
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">NYHA Klassifikation: Klasse II. Patient hat in Ruhe keine Beschwerden, leichte Symptome bei Aktivität.</div>"