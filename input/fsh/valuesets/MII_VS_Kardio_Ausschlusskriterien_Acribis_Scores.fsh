ValueSet: MII_VS_Kardio_Ausschlusskriterien_Acribis_Score
Id: mii-vs-kardio-ausschlusskriterien-acribis-score
Title: "MII VS Kardio Ausschlusskriterien_Acribis Score"
Description: "ValueSet for exclusion criteria for score computation"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft

// Obacht: Dieser Kommentar kann entfernt werden, sobald die Codes von Klinikern geprüft wurden.

// Wert "bislang noch unbehandelt" bei Herzklappenerkrankung (wir arbeiten nicht mit Negationen)
  // Looking for something similar to Condition untreated  --> Invaraint to combine with reference to condition?
  //
// Chadvasc: hochgradige Mitralklappenstenose --> Ausschluss höhergradiges Vitium
  // 838450006 = Severe mitral valve stenosis (disorder)
  // Severe stenosis of aortic valve (disorder) = SCTID: 836482000
// Angeborener Herzfehler schon als Diagnose? Sonst hier TODO alle Ausschlusskriterien anlegen? Mehr Möglichkeiten besser oder verwirrend?
* include codes from system $ausschluss-cs