Profile: MII_PR_Kardio_Atherosklerotisches_Erstereignis
Id: mii-pr-kardio-atherosklerotisches-erstereignis
Parent: Observation
Title: "MII PR Kardio Atherosklerotisches Erstereignis"
Description: "Profil zur Erfassung des Datum des ersten  artherosklerotischen Ereignisses im Kontext von ACRIBiS."

* insert PR_CS_VS_Version
* insert Publisher

* ^status = #active
* ^experimental = false
* ^date = "2025-09-03"

* code MS
* code from MII_VS_Kardio_Artherosklerotisches_Ereignis_SNOEMDCT (preferred) //TODO SNOMED/ICD
* code ^comment = "Code, um anzugeben, welches Ereignis das erste war: 
Koronare Herzerkrankung, TIA, Amaurosis Fugax, Apoplex, Retinainfarkt, oder Operation der Carotiden, pAVK, Bauchaortenaneurysma."
* code.coding 1..1 MS

* subject 1.. MS
* subject only Reference(Patient)

* value[x] only dateTime
* value[x] ^comment = "Datum des bezeichneten ersten atherosklerotischen Ereignisses (z.B. Herzinfarkt, Apoplex, pAVK)"
* valueDateTime 1.. MS

Instance: mii-exa-kardio-atherosklerotisches-erstereignis
InstanceOf: MII_PR_Kardio_Atherosklerotisches_Erstereignis
Title: "MII EXA Kardio Atherosklerotisches Erstereignis"
Description: "Beispiel einer Observation für das Datum eines unbestimmten atherosklerotischen Erstereignisses"
Usage: #example

* status = #final
* code.coding = https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-atherosklerotisches-ereignis#ae "Atherosklerotisches Ereignis"
* subject.display = "Beispielpatient"
* effectiveDateTime = "2025-05-23T13:48:17+02:00"
* performer.display = "Beispielkardiologe"
* valueDateTime = "2023-01"