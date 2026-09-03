Instance: mii-exa-kardio-score-nyha-ii
InstanceOf: MII_PR_Kardio_Score_NYHA
Usage: #example
Title: "MII EXA Kardio Score NYHA II"
Description: "Beispielhafte Instanz zur Dokumentation der NYHA-Klassifikation bei Herzinsuffizienz gemäß MII PR Kardio Score NYHA."

* language = #de-DE
* contained[0] = Beispielpatient
* contained[1] = Beispielfall
* identifier.system = "http://demo.org/observation-ids"
* identifier.value = "NYHA-OBS-123456"
* status = #final
* code.coding[sct] = $sct-with-version#762994006 "New York Heart Association Classification class"
* code.coding[loinc] = $loinc-with-version#93124-6 "New York Heart Association Functional Classification panel"
* subject = Reference(Beispielpatient)
* encounter = Reference(Beispielfall)
* effectiveDateTime = "2024-11-12T14:23:00+01:00"
* issued = "2024-11-12T15:00:00+01:00"
* performer[0] = Reference(mii-exa-kardio-rolle-kardiologe)
* valueCodeableConcept = $sct-with-version#421704003 "New York Heart Association Classification - Class II"
* note.text = "Patient berichtet über leichte Einschränkungen bei moderater körperlicher Aktivität. Keine Beschwerden in Ruhe."