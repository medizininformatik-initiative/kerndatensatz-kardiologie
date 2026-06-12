Instance: mii-exa-kardio-atherosklerotisches-erstereignis
InstanceOf: MII_PR_Kardio_Atherosklerotisches_Erstereignis
Title: "MII EXA Kardio Atherosklerotisches Erstereignis"
Description: "Beispiel einer Observation für das Datum eines unbestimmten atherosklerotischen Erstereignisses"
Usage: #example

* language = #de-DE
* status = #final
* code = $example-ath-ereignis#ae "Atherosklerotisches Ereignis"
* subject.display = "Beispielpatient"
* effectiveDateTime = "2025-05-23T13:48:17+02:00"
* performer.display = "Beispielkardiologe"

* component[erkrankung].code = $sct#439401001 "Diagnosis"
* component[erkrankung].valueCodeableConcept = $example-ath-ereignis#ae "Atherosklerotisches Ereignis"

* component[datum].code = $sct#432213005 "Date of diagnosis"
* component[datum].valueDateTime = "2023-01"