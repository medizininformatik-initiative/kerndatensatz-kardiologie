CodeSystem: MII_CS_Kardio_Supplement_SNOMEDCT
Id: mii-cs-kardio-supplement-snomedct
Title: "MII CS Kardio Supplement [SNOMED CT]"
Description: "Supplement mit post-koordinierenden SNOMED CT-Codes aus dem Modul Kardiologie."

* insert PR_CS_VS_Version
* insert Publisher

* ^status = #active
* ^experimental = true
* ^date = "2025-12-05"
* ^content = #supplement
* ^supplements = "http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20250701"

// Abbildung des höhergradigen Vitiums primärer Genese mit einem post-koordinierenden SNOMED CT-Code
* #368009:{116676008=49755003,363698007=17401000},{246112005=24484000} "368009|Heart valve disorder|:{116676008|Associated morphology|=49755003|Abnormal tissue appearance|,363698007|Finding site|=17401000|Cardiac valve|},{246112005|Severity|=24484000|Severe|}"

// Abbildung der interventionellen Klappentherapie
* #73544002:{260507000=260519008} "Operation on heart valve:{Access=Transcatheter approach}"

// Kodierung des Fragebogenitems "Starke spontane Blutung" aus dem Acribis-FollowUp-Fragebogen
* #64572001:{116676008=50960005,47429007=131148009,42752001=789750003,246112005=24484000} "Disease:{Associated morphology=Hemorrhage,Associated with=Bleeding,Due to=Spontaneous event,Severity=Severe}"