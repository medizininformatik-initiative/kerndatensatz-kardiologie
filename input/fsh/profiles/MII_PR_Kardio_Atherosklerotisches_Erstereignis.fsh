Profile: MII_PR_Kardio_Atherosklerotisches_Erstereignis
Id: mii-pr-kardio-atherosklerotisches-erstereignis
Parent: Observation
Title: "MII PR Kardio Atherosklerotisches Erstereignis"
Description: "Profil zur Erfassung des Datum des ersten  atherosklerotischen Ereignisses im Kontext von ACRIBiS."

* insert PR_CS_VS_Version
* insert Publisher

* ^status = #active
* ^experimental = false
* ^date = "2025-09-03"

* code 1..1 MS
* code.coding 1.. MS
* code.coding.system 1.. MS
* code.coding.version 1.. MS
* code.coding.code 1.. MS
* code from MII_VS_Kardio_Atherosklerotisches_Ereignis_SNOEMDCT (preferred) //TODO SNOMED/ICD
* code ^comment = "Code, um anzugeben, welches Ereignis das erste war: 
Koronare Herzerkrankung, TIA, Amaurosis Fugax, Apoplex, Retinainfarkt, oder Operation der Carotiden, pAVK, Bauchaortenaneurysma."
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this" 
* code.coding ^slicing.rules = #open
* code.coding contains
    kardio 1..1 and
    sct 0..1 and
    icd10-gm 0..1
* code.coding[kardio] ^patternCoding.system = $ath-ereignis
* code.coding[kardio].system 1.. MS
* code.coding[kardio].code 1.. MS
* code.coding[sct] ^patternCoding.system = $sct
* code.coding[sct].system 1.. MS
* code.coding[sct].version 1.. MS
* code.coding[sct].code 1.. MS
* code.coding[icd10-gm] ^patternCoding.system = $icd10-gm-vs
* code.coding[icd10-gm].system 1.. MS
* code.coding[icd10-gm].version 1.. MS
* code.coding[icd10-gm].code 1.. MS

* subject 1.. MS
* subject only Reference(Patient)

* effective[x] 1.. MS
* effective[x] only dateTime or Period or instant

* value[x] only dateTime
* value[x] ^comment = "Datum des bezeichneten ersten atherosklerotischen Ereignisses (z.B. Herzinfarkt, Apoplex, pAVK)"
* valueDateTime 1.. MS