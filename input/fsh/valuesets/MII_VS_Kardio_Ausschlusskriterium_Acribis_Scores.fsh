ValueSet: MII_VS_Kardio_Ausschlusskriterium_ACRIBiS_Scores
Id: mii-vs-kardio-ausschlusskriterium-acribis-scores
Title: "MII VS Kardio Ausschlusskriterium ACRIBiS Scores"
Description: "ValueSet for exclusion criteria for score computation"

* insert PR_CS_VS_Version
* insert Publisher

* ^status = #active
* ^experimental = false
* ^date = "2025-09-03"

// Obacht: Dieser Kommentar kann entfernt werden, sobald die Codes von Klinikern geprüft wurden.

// TODO - evtl. noch weitere Ausschlusskriterien zum VS hinzunehmen
* include codes from system MII_CS_Kardio_Ausschlusskriterium_ACRIBiS_Scores
* $sct#79619009 // Mitral valve stenosis (disorder)
* $sct#73544002 // Operation on heart valve (procedure)
* $sct#13213009 // Congenital heart disease (disorder)

* MII_CS_Kardio_Modifizierte_Rankin_Skala#mRSbigger3 // Die Einstufung auf der mRS-Skala liegt bei mehr als 3 (Patient kann nicht ohne fremde Hilfe gehen)

// Marcumar, Heparin
// Kardiogener Schock