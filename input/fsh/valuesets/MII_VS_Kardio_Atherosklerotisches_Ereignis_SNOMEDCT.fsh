ValueSet: MII_VS_Kardio_Artherosklerotisches_Ereignis_SNOEMDCT
Id: mii-vs-kardio-atherosklerotisches-ereignis-snomedct
Title: "MII VS Kardio Atherosklerotisches Ereignis [SNOMED CT]"
Description: "ValueSet for Relevant Codes for Atherosclerotic Events"

* insert PR_CS_VS_Version
* insert Publisher

* ^status = #active
* ^experimental = false
* ^date = "2025-09-05"

// Obacht: Dieser Kommentar kann entfernt werden, sobald die Codes von Klinikern geprüft wurden.

// Koronare Herzerkrankung, TIA, Amaurosis Fugax, Apoplex, Retinainfarkt, oder **Operation der Carotiden**, pAVK, Bauchaortenaneurysma
* $sct#53741008 // "Coronary arteriosclerosis (disorder)"
* $sct#88032003 // "Amaurosis fugax (disorder)"
* $sct#422504002 // "Ischemic stroke (disorder)"
* $sct#232035005 // "Retinal artery occlusion (disorder)"
* $sct#399957001 // "Peripheral arterial occlusive disease (disorder)"
* $sct#233985008 // "Abdominal aortic aneurysm (disorder)"
// Achtung, beim Folgenden handelt es sich um eine Prozedur, keine Diagnose
* $sct#1287902001 // "Operation on carotid artery (procedure)"

* include codes from system MII_CS_Kardio_Atherosklerotisches_Ereignis