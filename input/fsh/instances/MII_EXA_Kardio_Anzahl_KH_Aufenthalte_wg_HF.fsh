Instance: mii-exa-kardio-anzahl-kh-aufenthalte-wg-hf
InstanceOf: MII_PR_Kardio_Anzahl_KH_Aufenthalte_wg_HF
Title: "MII EXA Kardio Anzahl KH Aufenthalte WG HF"
Description: "Beispiel einer Observation für 3 Krankenhausaufenthalte wegen Herzinsuffizienz im letzten Jahr"
Usage: #example

* status = #final
* code.coding = $sct#298060002 "Number of admissions (observable entity)"
* subject.display = "Beispielpatient"
* effectivePeriod.start = "2024-05-21"
* effectivePeriod.end = "2025-05-20"
* performer.display = "Beispielkardiologe"
* valueInteger = 3
* component[Grund].code.coding = $sct#406524005 "Reason for visit diagnosis"
* component[Grund].valueCodeableConcept = $sct#84114007 "Heart failure"