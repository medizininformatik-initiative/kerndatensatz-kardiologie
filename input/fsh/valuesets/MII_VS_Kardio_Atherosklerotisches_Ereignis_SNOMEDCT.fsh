ValueSet: MII_VS_Kardio_Atherosklerotisches_Ereignis_SNOEMDCT
Id: mii-vs-kardio-atherosklerotisches-ereignis-snomedct
Title: "MII VS Kardio Atherosklerotisches Ereignis [SNOMED CT]"
Description: "ValueSet for Relevant Codes for Atherosclerotic Events"

* insert PR_CS_VS_Version
* insert Publisher

* ^status = #active
* ^experimental = false
* ^date = "2025-09-05"

// Koronare Herzerkrankung, TIA, Amaurosis Fugax, Apoplex, Retinainfarkt, oder **Operation der Carotiden**, pAVK, Bauchaortenaneurysma
//* $sct#53741008 // "Coronary arteriosclerosis (disorder)"
//* $sct#88032003 // "Amaurosis fugax (disorder)"
//* $sct#422504002 // "Ischemic stroke (disorder)"
//* $sct#232035005 // "Retinal artery occlusion (disorder)"
//* $sct#399957001 // "Peripheral arterial occlusive disease (disorder)"
//* $sct#233985008 // "Abdominal aortic aneurysm (disorder)"
//* $sct#266257000 // "Transient ischemic attack (disorder)"
//// Achtung, beim Folgenden handelt es sich um eine Prozedur, keine Diagnose
//* $sct#1287902001 // "Operation on carotid artery (procedure)"

* include codes from system MII_CS_Kardio_Atherosklerotisches_Ereignis

* codes from system $sct where concept is-a #53741008 // Coronary arteriosclerosis (disorder)
* codes from system $sct where concept is-a #88032003 // Amaurosis fugax (disorder)
* codes from system $sct where concept is-a #422504002 // Ischemic stroke (disorder)
* codes from system $sct where concept is-a #232035005 // Retinal artery occlusion (disorder)
* codes from system $sct where concept is-a #399957001 // Peripheral arterial occlusive disease (disorder)
* codes from system $sct where concept is-a #233985008 // Abdominal aortic aneurysm (disorder)
* codes from system $sct where concept is-a #266257000 // Transient ischemic attack (disorder)
// Achtung, beim Folgenden handelt es sich um eine Prozedur, keine Diagnose
* codes from system $sct where concept is-a #1287902001 // Operation on carotid artery (procedure)