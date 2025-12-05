CodeSystem: MII_CS_Kardio_Modul_Supplement_SNOMEDCT
Id: mii-cs-kardio-modul-supplement-snomedct
Title: "MII CS Kardio Modul Supplement [SNOMED CT]"
Description: "Supplement mit post-koordinierenden SNOMED CT-Codes aus dem Modul Kardiologie."

* insert PR_CS_VS_Version
* insert Publisher

* ^status = #active
* ^experimental = true
* ^date = "2025-12-05"
* ^content = #supplement
* ^supplements = $sct-20250701

// Abbildung des höhergradigen Vitiums primärer Genese mit einem post-koordinierenden SNOMED CT-Code
* #368009:{116676008=49755003,363698007=17401000} "Heart valve disorder:{Associated morphology=Morphologically abnormal structure,Finding site=Cardiac valve structure}"

// Kodierung des Fragebogenitems "Starke spontane Blutung" aus dem Acribis-FollowUp-Fragebogen
* #64572001:{116676008=50960005,47429007=131148009,42752001=789750003,246112005=24484000} "Disease:{Associated morphology=Hemorrhage,Associated with=Bleeding,Due to=Spontaneous event,Severity=Severe}"