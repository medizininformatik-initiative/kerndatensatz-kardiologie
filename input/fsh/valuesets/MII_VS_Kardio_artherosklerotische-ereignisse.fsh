ValueSet: MII_VS_Kardio_Artherosklerotische_Ereignisse_SNOMED
Id: mii-vs-kardio-artherosklerotische-ereignisse
Title: "MII_VS_Kardio_Artherosklerotische_Ereignisse_SNOMED"
Description: "ValueSet for Relevant Codes for Atherosclerotic Events"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft

// Obacht: Dieser Kommentar kann entfernt werden, sobald die Codes von Klinikern geprüft wurden.

// Koronare Herzerkrankung, TIA, Amaurosis Fugax, Apoplex, Retinainfarkt, oder **Operation der Carotiden**, pAVK, Bauchaortenaneurysma
* $sct#53741008 "Coronary arteriosclerosis (disorder)"
* $sct#88032003 "Amaurosis fugax (disorder)"
* $sct#422504002 "Ischemic stroke (disorder)"
* $sct#232035005 "Retinal artery occlusion (disorder)"
* $sct#399957001 "Peripheral arterial occlusive disease (disorder)"
* $sct#233985008 "Abdominal aortic aneurysm (disorder)"
// Achtung, beim Folgenden handelt es sich um eine Prozedur, keine Diagnose
* $sct#1287902001 "Operation on carotid artery (procedure)"

//* include codes from system $sct where code = #53741008   // Display: "transitorische ischämische Attacke (TIA)"
//* include codes from system $sct where code = #88032003   // Display: "Amaurosis fugax"
//* include codes from system $sct where code = #422504002    // Display: "Apoplex (ischämischer Schlaganfall)"
//* include codes from system $sct where code = #232035005   // Display: "Retinainfarkt (z. B. retinaler Arterienverschluss)"
//* include codes from system $sct where code = #399957001   // Display: "Periphere arterielle Verschlusskrankheit (pAVK)"
//* include codes from system $sct where code = #233985008  // Display: "Bauchaortenaneurysma" = I71.1-9

// Achtung, beim Folgenden handelt es sich um eine Prozedur, keine Diagnose
//* include codes from system $sct where code = #1287902001   // Display: "Operation der Carotiden (Carotis-Endarteriektomie)"
