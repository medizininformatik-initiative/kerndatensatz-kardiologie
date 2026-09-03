Instance: mii-exa-kardio-atherosklerotisches-erstereignis
InstanceOf: MII_PR_Kardio_Atherosklerotisches_Erstereignis
Title: "MII EXA Kardio Atherosklerotisches Erstereignis"
Description: "Beispiel einer Observation für das Datum eines unbestimmten atherosklerotischen Erstereignisses"
Usage: #example

* language = #de-DE
* contained[0] = Beispielpatient
* status = #final
* code = $ath-ereignis-with-version|#ae "Atherosklerotisches Ereignis"
* subject = Reference(Beispielpatient)
* effectiveDateTime = "2025-05-23T13:48:17+02:00"
* performer.display = "Beispielkardiologe"

* component[erkrankung].code = $sct-with-version#439401001 "Diagnosis"
* component[erkrankung].valueCodeableConcept = $ath-ereignis-with-version#ae "Atherosklerotisches Ereignis"

* component[datum].code = $sct-with-version#432213005 "Date of diagnosis"
* component[datum].valueDateTime = "2023-01"