Instance: mii-exa-kardio-ausschluss-scoreberechnung-vitium
InstanceOf: MII_PR_Kardio_Ausschluss_Scoreberechnung
Title: "MII EXA Kardio Ausschluss Scoreberechnung Vitium"
Description: "Beispiel einer Observation für das Ausschlusskriterium unbehandeltes, höhergradiges Vitium"
Usage: #example

* status = #final
* code.coding = $sct#271000124103 "Medical reason for exclusion from performance measure (observable entity)"
* subject.display = "Beispielpatient"
* effectiveDateTime = "2025-05-21T17:35:22+02:00"
* performer.display = "Beispielkardiologe"
* valueCodeableConcept.coding = MII_CS_Kardio_Ausschlusskriterium_ACRIBiS_Scores#hv "Ausschlusskriterium unbehandeltes, höhergradiges Vitium"