Instance: mii-exa-kardio-mrs
InstanceOf: MII_PR_Kardio_Score_Modifizierte_Rankin_Skala
Usage: #example
Title: "MII EXA Kardio MRS"
Description: "Beispielhafte Instanz zur Dokumentation der mRS-Skala nach einem Schlaganfall gemäß MII PR Kardio Score mRS."

* language = #de-DE
* contained[0] = Beispielpatient
* contained[1] = Beispielfall
* identifier.system = "http://demo.org/observation-ids"
* identifier.value = "MRS-OBS-123457"
* status = #final
* code.coding[sct] = $sct-with-version#1255866005 "Modified Rankin Scale score"
* code.coding[loinc] = $loinc-with-version#75859-9 "Modified rankin scale"
* subject = Reference(Beispielpatient)
* encounter = Reference(Beispielfall)
* effectiveDateTime = "2024-11-12T14:23:00+01:00"
* issued = "2024-11-12T15:00:00+01:00"
* performer[0].display = "Beispielkardiologe"
* valueCodeableConcept = $mrs-with-version#mRSbigger3 "Die Einstufung auf der mRS-Skala liegt bei mehr als 3 (Patient kann nicht ohne fremde Hilfe gehen)"
* note.text = "Die Einstufung auf der mRS-Skala liegt bei mehr als 3 (Patient kann nicht ohne fremde Hilfe gehen)"