Instance: mii-exa-kardio-mrs
InstanceOf: MII_PR_Kardio_Score_Modifizierte_Rankin_Skala
Usage: #example
Title: "MII EXA Kardio MRS"
Description: "Beispielhafte Instanz zur Dokumentation der mRS-Skala nach einem Schlaganfall gemäß MII PR Kardio Score mRS."

* identifier.system = "http://example.org/observation-ids"
* identifier.value = "MRS-OBS-123457"
* status = #final
* code.coding[sct] = $sct#1255866005 "Modified Rankin Scale score (observable entity)"
* code.coding[loinc] = $loinc#75859-9 "Modified rankin scale"
* subject.display = "Beispielpatient"
* encounter.display = "Beispielfall"
* effectiveDateTime = "2024-11-12T14:23:00+01:00"
* issued = "2024-11-12T15:00:00+01:00"
* performer[0].display = "Beispielkardiologe"
* valueCodeableConcept = MII_CS_Kardio_Modifizierte_Rankin_Skala#mRSbigger3 "Die Einstufung auf der mRS-Skala liegt bei mehr als 3 (Patient kann nicht ohne fremde Hilfe gehen)"
* note.text = "Die Einstufung auf der mRS-Skala liegt bei mehr als 3 (Patient kann nicht ohne fremde Hilfe gehen)"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">mRS Skala: Die Einstufung auf der mRS-Skala liegt bei mehr als 3 (Patient kann nicht ohne fremde Hilfe gehen).</div>"