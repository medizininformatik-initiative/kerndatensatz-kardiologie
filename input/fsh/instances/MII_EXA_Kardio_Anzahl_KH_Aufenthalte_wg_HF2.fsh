Instance: mii-exa-kardio-anzahl-kh-aufenthalte-wg-hf2
InstanceOf: MII_PR_Kardio_Anzahl_KH_Aufenthalte_wg_HF
Title: "MII EXA Kardio Anzahl KH Aufenthalte WG HF (mit Angabe 'Weiß nicht')"
Description: "Beispiel einer Observation bei Angabe 'Ich weiß es nicht' zu Krankenhausaufenthalte wegen Herzinsuffizienz im letzten Jahr"
Usage: #example

* language = #de-DE
* contained[0] = Beispielpatient
* status = #final
* code.coding[sct] = $sct-with-version#298060002 "Number of admissions"
* subject = Reference(Beispielpatient)
* effectivePeriod.start = "2025-05-21"
* effectivePeriod.end = "2026-05-20"
* performer.display = "Beispielkardiologe"
* valueCodeableConcept = $v2-0532-with-version#UNK "unbekannt"
* component[Grund].code.coding = $sct-with-version#406524005 "Reason for visit diagnosis"
* component[Grund].valueCodeableConcept = $sct-with-version#84114007 "Heart failure"