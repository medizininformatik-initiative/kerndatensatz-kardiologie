Instance: mii-exa-kardio-anzahl-kh-aufenthalte-wg-hf2
InstanceOf: MII_PR_Kardio_Anzahl_KH_Aufenthalte_wg_HF
Title: "MII EXA Kardio Anzahl KH Aufenthalte WG HF (mit Angabe 'Weiß nicht')"
Description: "Beispiel einer Observation bei Angabe 'Ich weiß es nicht' zu Krankenhausaufenthalte wegen Herzinsuffizienz im letzten Jahr"
Usage: #example

* status = #final
* code.coding[sct] = $sct#298060002 "Number of admissions (observable entity)"
* subject.display = "Beispielpatient"
* effectivePeriod.start = "2025-05-21"
* effectivePeriod.end = "2026-05-20"
* performer.display = "Beispielkardiologe"
* valueCodeableConcept = $nein_unbekannt#UNK "unknown"
* component[Grund].code.coding = $sct#406524005 "Reason for visit diagnosis"
* component[Grund].valueCodeableConcept = $sct#84114007 "Heart failure"