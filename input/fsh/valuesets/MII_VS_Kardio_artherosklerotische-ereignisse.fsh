ValueSet: MII_VS_Kardio_Artherosklerotische_Ereignisse_SNOMED
Id: mii-vs-kardio-artherosklerotische-ereignisse
Title: "MII_VS_Kardio_Artherosklerotische_Ereignisse_SNOMED"
Description: "ValueSet for Relevant Codes for Atherosclerotic Events"
* ^status = #active

// Obacht: Dieser Kommentar kann entfernt werden, sobald die Codes von Klinikern geprüft wurden.

// Koronare Herzerkrankung, TIA, Amaurosis Fugax, Apoplex, Retinainfarkt, oder **Operation der Carotiden**, pAVK, Bauchaortenaneurysma
* include codes from system $sct where code = #53741008   // Display: "transitorische ischämische Attacke (TIA)"
* include codes from system $sct where code = #88032003   // Display: "Amaurosis fugax"
* include codes from system $sct where code = #422504002    // Display: "Apoplex (ischämischer Schlaganfall)"
* include codes from system $sct where code = #232035005   // Display: "Retinainfarkt (z. B. retinaler Arterienverschluss)"
* include codes from system $sct where code = #399957001   // Display: "Periphere arterielle Verschlusskrankheit (pAVK)"
* include codes from system $sct where code = #233985008  // Display: "Bauchaortenaneurysma" = I71.1-9

// Achtung, beim Folgenden handelt es sich um eine Prozedur, keine Diagnose
* include codes from system $sct where code = #1287902001   // Display: "Operation der Carotiden (Carotis-Endarteriektomie)"
