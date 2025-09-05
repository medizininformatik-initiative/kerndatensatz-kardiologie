Profile: MII_PR_Kardio_Diagnose_Prozedur_Nein_Unbekannt
Id: mii-pr-kardio-diagnose-prozedur-nein-unbekannt
Parent: Observation
Title: "MII PR Kardio Diagnose Prozedur Nein Unbekannt"
Description: "Dieses Profil bildet das anamnestische Nichtvorliegen einer Diagnose, bzw. Prozedur, oder Unklarheit darüber ab."

* insert PR_CS_VS_Version
* insert Publisher

* ^status = #active
* ^experimental = false
* ^date = "2025-09-04"

* category from $observation-category-vs (required)

* code 1.. MS
* code.coding 1.. MS 
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open

* code.coding contains
    diagnose-snomed 0..1 MS and
    prozedur-snomed 0..1 MS and
    icd-10-gm 0..1 MS and
    ops 0..1 MS

* code.coding[diagnose-snomed] from $diagnoses-sct-vs (required)
* code.coding[prozedur-snomed] from $prozedur-sct-vs (required)
* code.coding[icd-10-gm] from $icd-10-gm-vs (required)
* code.coding[ops] from $ops-vs (required)

* subject 1..1 MS
* subject only Reference(Patient)

* effective[x] 1.. MS
* effective[x] only dateTime

* value[x] 1.. MS
* value[x] only CodeableConcept
* valueCodeableConcept from MII_VS_Kardio_Nein_Unbekannt (extensible)
* valueCodeableConcept.extension contains $data-absent-reason named data-absent-reason 0..1

Instance: mii-exa-kardio-herzinsuffizienz-unbekannt
InstanceOf: MII_PR_Kardio_Diagnose_Prozedur_Nein_Unbekannt
Title: "MII EXA Kardio Herzinsuffizienz Unbekannt"
Description: "Beispiel: Der Patient weiß nicht, ob er Herzinsuffizienz hat."
Usage: #example

* status = #final
* category = $observation-category#survey
* code.coding[diagnose-snomed] = $sct#84114007 "Heart failure (disorder)"
* code.coding[icd-10-gm] = $icd-10-gm|2025#I50.9 "Herzinsuffizienz, nicht näher bezeichnet"
* performer.display = "Beispielkardiologe"
* subject.display = "Beispielpatient"
* effectiveDateTime = "2025-06-06T14:29:34.214+02:00"
* valueCodeableConcept = $v2-0532#ASKU "asked but unknown"
* method =  $sct#129431000 "History taking - action (qualifier value)"
* device.display = "Beispieltablet"
* derivedFrom.display = "Beispielfragebogen"

Instance: mii-exa-kardio-pci-nein
InstanceOf: MII_PR_Kardio_Diagnose_Prozedur_Nein_Unbekannt
Title: "MII EXA Kardio PCI/Stent Nein"
Description: "Beispiel: Der Patient hatte noch keine Koronarintervention mit PCI/Stent."
Usage: #example

* status = #final
* category = $observation-category#survey
* code.text = "Koronarintervention mit PCI/Stent"
* code.coding[0] = $sct#415070008 "Percutaneous transluminal coronary intervention using imaging guidance with contrast (procedure)"
* code.coding[1] = $ops#8-837.y "Perkutan-transluminale Gefäßintervention an Herz und Koronargefäßen: N.n.bez."
* performer.display = "Beispielkardiologe"
* subject.display = "Beispielpatient"
* effectiveDateTime = "2025-06-06T14:29:34.214+02:00"
* valueCodeableConcept = $v2-0532#N "No"
* method =  $sct#129431000 "History taking - action (qualifier value)"
* device.display = "Beispieltablet"
* derivedFrom.display = "Beispielfragebogen"