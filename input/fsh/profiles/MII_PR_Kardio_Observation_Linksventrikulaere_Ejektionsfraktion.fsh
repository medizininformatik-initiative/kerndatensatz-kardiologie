Profile: MII_PR_Kardio_Observation_Linksventrikulaere_Ejektionsfraktion
Id: mii-pr-kardio-observation-linksventrikulaere-ejektionsfraktion
Parent: SD_MII_ICU_Monitoring_Und_Vitaldaten // wir müssten von Observation erben, da VS für SNOMED und LOINC hier zu restriktiv.

//ICU Vitalparameter 
// https://simplifier.net/isik-vitalparameter-v4/sd_mii_icu_monitoring_und_vitaldaten

// LVEF 
// Einschränkungen aus mii-icu-profil übernehmen wo sinnvoll, category bspw. nicht.
// Code als Observation.code.coding
// Intepretation --> ValueSet für high/low/normal
// Methode?? per Loinc, per "method"?