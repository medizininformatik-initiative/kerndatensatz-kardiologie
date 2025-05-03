ValueSet: MII_VS_Kardio_Artherosklerotische_Ereignisse_SNOMED
Id: mii-vs-kardio-artherosklerotische-ereignisse
Title: "MII_VS_Kardio_Artherosklerotische_Ereignisse_SNOMED"
Description: "ValueSet for Relevant Codes for Atherosclerotic Events"
* ^status = #active

// Koronare Herzerkrankung, TIA, Amaurosis Fugax, Apoplex, Retinainfarkt, oder ~Operation der Carotiden~, pAVK, Bauchaortenaneurysma
* include codes from system $sct where code = #53741008   // Koronare Herzerkrankung (KHK)                         = I25.
* include codes from system $sct where code =  #266257000   // Transitorische ischämische Attacke (TIA)
* include codes from system $sct where code = #88032003   // Amaurosis fugax
* include codes from system $sct where code = #422504002    // Apoplex (ischämischer Schlaganfall)
* include codes from system $sct where code = #232035005   // Retinainfarkt (z. B. retinaler Arterienverschluss)

* include codes from system $sct where code = #399957001   // Periphere arterielle Verschlusskrankheit (pAVK)
* include codes from system $sct where code = #233985008  // Bauchaortenaneurysma                                  = I71.1-9
// Obacht: Dieser Kommentar kann entfernt werden, sobald die Codes von Klinikern geprüft wurden.

* include codes from system $sct where code = #1287902001   // Operation der Carotiden (Carotis-Endarteriektomie)
// Achtung, hierbei handelt es sich um eine Prozedur, keine Diagnose