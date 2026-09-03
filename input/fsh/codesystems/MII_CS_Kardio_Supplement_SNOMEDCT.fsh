CodeSystem: MII_CS_Kardio_Supplement_SNOMEDCT
Id: mii-cs-kardio-supplement-snomedct
Title: "MII CS Kardio Supplement [SNOMED CT]"
Description: "Supplement mit post-koordinierenden SNOMED CT-Codes aus dem Modul Kardiologie."

* insert PR_CS_VS_Version
* insert Publisher

* ^status = #active
* ^experimental = false
* ^date = "2025-12-05"
* ^content = #supplement
* ^supplements = $sct-with-version

// Abbildung des höhergradigen Vitiums primärer Genese mit einem post-koordinierenden SNOMED CT-Code
* #368009:{116676008=49755003,363698007=17401000},{246112005=24484000} "368009|Heart valve disorder|:{116676008|Associated morphology|=49755003|Morphologically abnormal structure|,363698007|Finding site|=17401000|Cardiac valve structure|},{246112005|Severity|=24484000|Severe|}"

// Abbildung der interventionellen Klappentherapie
* #73544002:{260507000=260519008} "73544002|Operation on heart valve|:{260507000|Access|=260519008|Transcatheter approach|}"

// Kodierung des Fragebogenitems "Starke spontane Blutung" aus dem Acribis-FollowUp-Fragebogen
* #64572001:{116676008=50960005,47429007=131148009,42752001=789750003,246112005=24484000} "64572001|Disease|:{116676008|Associated morphology|=50960005|Hemorrhage|,47429007|Associated with|=131148009|Bleeding|,42752001|Due to|=789750003|Spontaneous event|,246112005|Severity|=24484000|Severe|}"