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
    prozedur-snomed 0..1 MS

* code.coding[diagnose-snomed] from $diagnoses-sct-vs (required)
* code.coding[prozedur-snomed] from $prozedur-sct-vs (required)

* subject 1..1 MS
* subject only Reference(Patient)

* effective[x] 1.. MS
* effective[x] only dateTime

* value[x] 1.. MS
* value[x] only CodeableConcept
* valueCodeableConcept from MII_VS_Kardio_Nein_Unbekannt (extensible)
* valueCodeableConcept.extension contains $data-absent-reason named data-absent-reason 0..1