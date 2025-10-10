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
    icd10-gm 0..1 MS and
    diagnoseSnomed 0..1 MS and
    prozedurSnomed 0..1 MS and
    alpha-id 0..1 MS and
    orphanet 0..1 MS

* code.coding[diagnoseSnomed] from $diagnoses-sct-vs (required)
* code.coding[prozedurSnomed] from $prozedur-sct-vs (required)
* code.coding[icd10-gm] only CodingICD10GM
* code.coding[icd10-gm] from $icd-10-gm-vs (required)
* code.coding[icd10-gm] ^patternCoding.system = "http://fhir.de/CodeSystem/bfarm/icd-10-gm"
* code.coding[icd10-gm].system 1.. MS
* code.coding[icd10-gm].version 1.. MS
* code.coding[icd10-gm].code 1.. MS
* code.coding[alpha-id] only CodingAlphaID
* code.coding[alpha-id] from $alpha-id-vs (required)
* code.coding[alpha-id] ^patternCoding.system = "http://fhir.de/CodeSystem/bfarm/alpha-id"
* code.coding[alpha-id].system 1.. MS
* code.coding[alpha-id].code 1.. MS
* code.coding[orphanet] from mii-vs-diagnose-orphanet (required)
* code.coding[orphanet] ^patternCoding.system = "http://www.orpha.net"
* code.coding[orphanet].system 1.. MS
* code.coding[orphanet].code 1.. MS


* subject 1..1 MS
* subject only Reference(Patient)

* effective[x] 1.. MS
* effective[x] only dateTime

* value[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept from MII_VS_Kardio_Nein_Unbekannt (extensible)
//* valueCodeableConcept.extension contains $data-absent-reason named data-absent-reason 0..1