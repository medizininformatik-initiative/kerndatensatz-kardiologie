Profile: MII_PR_Kardio_Score_NYHA
Id: mii-pr-kardio-score-nyha
Parent: Observation // sd-mii-icu-score

Title: "MII_PR_Kardio_Score_NYHA"
Description: "Profil zur Erfassung der Einstufung der Stadien einer Herzinsuffizienz nach der New York Heart Association."

// TODO Code binden, bspw LOINC/SNOMED, damit in Ressource drin steht, was abgebildet ist.
// TODO ValueSet als Value[x]

//https://github.com/medizininformatik-initiative/kerndatensatzmodul-intensivmedizin/blob/master/input/fsh/sd-mii-icu-glascow-coma-score.fsh
// see https://simplifier.net/isik-vitalparameter-und-koerpermasze-v2/isikgcs --y nicht jeder ein Vitalwert. 
// Wir erben von Observation und Binden unsere Codes/VS

// License: Credit appropietly to New York Heart Association
// Online: see https://manual.jointcommission.org/releases/TJC2025B/DataElem0439.html


// See https://simplifier.net/guide/GermanCoronaConsensusDataSet-ImplementationGuide/Home/GECCOCore/Demographics/Frailtyscore.guide.md?version=current
// Score als Observation, Codes in Value[x]