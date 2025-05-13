ValueSet: MII_VS_Kardio_Medikation
Id: mii-vs-kardio-medikation
Title: "MII_VS_Kardio_Medikation"
Description: "ATC-Codes 'de' in der Kardiologie relevanter Medikamente."

* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-medikation"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft
* ^experimental = true
* ^date = "2024-10-09"
* ^version = "0.0.1"

// Filtern, auswählen von Codes
// Einzelne Codes 
  //* include codes from system http://www.whocc.no/atc
  //* $atc#C10BA01 "Lovastatin und Nicotinsäure"
// Gruppe hierarchischer Codes via in/is-a/=/!=:
  //* include codes from system http://snomed.info/sct where concept in http://snomed.info/sct#123456
// Filter
  // * include codes from system http://loinc.org where display matches ".*blood.*"

// 1. Thrombozytenaggregationshemmer
* $atc#B01AC "Thrombozytenaggregationshemmer, exkl. Heparin"
* $atc#B01AC06 "Acetylsalicylsäure"
* $atc#B01AC04 "Clopidogrel"
* $atc#B01AC05 "Ticlopidin"
* $atc#B01AC22 "Prasugrel"
* $atc#B01AC24 "Ticagrelor"
* $atc#B01AC25 "Cangrelor"
* $atc#B01AC30 "Kombinationen"
* $atc#B01AC34 "Clopidogrel und Acetylsalicylsäure"
// 2. Dual antiplatelet (Aspirin + P2Y12 Inhibitor": Aspirin + (Clopidogrel, Ticlopidin, Prasugrel, Ticagrelor, Cangrelor)
// * $atc#B01AC06 "Acetylsalicylsäure" // Already included
// 3. Aspirin plus low dose DOAC
* $atc#B01AE "Direkte Thrombin-Inhibitoren"
* $atc#B01AF "Direkte Faktor-Xa-Inhibitoren"
// 4. Aspirin or equivalent: Vitamin-K-Antagonist oder Thrombozytenaggregationshemmer oder DOAC
* $atc#B01AA "Vitamin-K-Antagonisten"
//* $atc#B01AC "Thrombozytenaggregationshemmer, exkl. Heparin" // Already included
//* $atc#B01AE "Direkte Thrombin-Inhibitoren" // Already included
//* $atc#B01AF "Direkte Faktor-Xa-Inhibitoren" // Already included
// 5. Marcumar/Falithrom
* $atc#B01AA04 "Phenprocoumon"
// 6. ACE-Inhibitor
* $atc#C09AA "ACE-Hemmer, rein"
* $atc#C09BA "ACE-Hemmer und Diuretika"
* $atc#C09BB "ACE-Hemmer und Calciumkanalblocker"
* $atc#C09BX "ACE-Hemmer, andere Kombinationen"
// 7. Angiotensin-Rezeptor Blocker	
* $atc#C09CA "Angiotensin-II-Rezeptorblocker (ARB), rein"
* $atc#C09DA "Angiotensin-II-Rezeptorblocker (ARB) und Diuretika"
* $atc#C09DB "Angiotensin-II-Rezeptorblocker (ARB) und Calciumkanalblocker"
* $atc#C09DX "Angiotensin-II-Rezeptorblocker (ARB), andere Kombinationen"
// 8. Mineralokortikoidrezeptor-Antagonist (MRA)
* $atc#C03DA "Aldosteronantagonisten"
* $atc#C03EC "Aldosteronantagonisten und Low-ceiling-Diuretika"
* $atc#03ED "Aldosteronantagonisten und High-ceiling-Diuretika"
// 9	Sacubitril/Valsartan (ARNI"	
* $atc#C09DX04 "Valsartan und Sacubitril"	 
// 10	SGLT-Inhibitor (SGLT2i)	
* $atc#A10BK "Natrium-Glucose-Cotransporter-2-(SGLT2)-Inhibitoren"	 
// 11	Betablocker	
* $atc#C07A "BETA-ADRENOZEPTORANTAGONISTEN"	 
// 12	Schleifendiuretika	
* $atc#C03C "HIGH-CEILING-DIURETIKA"	 
// 13	Torasemid	
* $atc#C03CA04 "Torasemid"	 
// 14	Furosemid	
* $atc#C03CA01 "Furosemid"	 
// 15	Thiazid Diuretika -> antihypert. Therapie "Charge AF"	
* $atc#C03A "LOW-CEILING-DIURETIKA, THIAZIDE"	 
// 16	Calcium-Canal Blocker -> antihypert. Therapie "Charge AF"	
* $atc#C07FB "Beta-Adrenozeptorantagonisten und Calciumkanalblocker"
* $atc#C08 "CALCIUMKANALBLOCKER"
//* $atc#C09BB "ACE-Hemmer und Calciumkanalblocker" // Already Included
//* $atc#C09DB "Angiotensin-II-Rezeptorblocker (ARB) und Calciumkanalblocker" // Already Included
// 17	Digitalis	C01AA "Digitalisglykoside"	 
// 18	Ivabradin	
* $atc#C01EB17 "Ivabradin"
* $atc#C07FX05 "Metoprolol und Ivabradin"
* $atc#C07FX06 "Carvedilol und Ivabradin"
// 19	Statine	
* $atc#A10BH51 "Sitagliptin und Simvastatin"
* $atc#A10BH52 "Gemigliptin und Rosuvastatin"
* $atc#C10AA "HMG-CoA-Reduktasehemmer"
//* $atc#C10BA* "Kombinationen verschiedener Mittel, die den Lipidstoffwechsel beeinflussen" //außer C10BA10 "Bempedoinsäure und Ezetimib"
* $atc#C10BA01 "Lovastatin und Nicotinsäure"
* $atc#C10BA02 "Simvastatin und Ezetimib"
* $atc#C10BA03 "Pravastatin und Fenofibrat"
* $atc#C10BA04 "Simvastatin und Fenofibrat"
* $atc#C10BA05 "Atorvastatin und Ezetimib"
* $atc#C10BA06 "Rosuvastatin und Ezetimib"
* $atc#C10BA07 "Rosuvastatin und Omega-3-Fettsäuren"
* $atc#C10BA08 "Atorvastatin und Omega-3-Fettsäuren"
* $atc#C10BA09 "Rosuvastatin und Fenofibrat"
* exclude codes from system $atc where code = #C10BA10 // Ausschluss: Bempedoinsäure und Ezetimib
* $atc#C10BA11 "Pravastatin und Ezetimib"
* $atc#C10BA12 "Pravastatin, Ezetimib und Fenofibrat"
* $atc#C10BX "Mittel, die den Lipidstoffwechsel beeinflussen in Kombination mit anderen Mitteln"
// 20	Fluvastatin	
* $atc#C10AA04 "Fluvastatin"	 
// 21	Pravastatin	
* $atc#C10AA03 "Pravastatin"
//* $atc#C10BA03 "Pravastatin und Fenofibrat" // Already Included
//* $atc#C10BA11 "Pravastatin und Ezetimib" // Already Included
//* $atc#C10BA12 "Pravastatin, Ezetimib und Fenofibrat" // Already Included
* $atc#C10BX02 "Pravastatin und Acetylsalicylsäure"
// 22	Simvastatin	
//* $atc#A10BH51 "Sitagliptin und Simvastatin" // Already Included
* $atc#C10AA01 "Simvastatin"
//* $atc#C10BA02 "Simvastatin und Ezetimib" // Already Included
//* $atc#C10BA04 "Simvastatin und Fenofibrat" // Already Included
* $atc#C10BX01 "Simvastatin und Acetylsalicylsäure"
* $atc#C10BX04 "Simvastatin, Acetylsalicylsäure und Ramipril"
// 23	Atorvastatin	
* $atc#C10AA05 "Atorvastatin"
//* $atc#C10BA05 "Atorvastatin und Ezetimib" // Already Included
//* $atc#C10BA08 "Atorvastatin und Omega-3-Fettsäuren" // Already Included
* $atc#C10BX03 "Atorvastatin und Amlodipin"
* $atc#C10BX06 "Atorvastatin, Acetylsalicylsäure und Ramipril"
* $atc#C10BX08 "Atorvastatin und Acetylsalicylsäure"
* $atc#C10BX11 "Atorvastatin, Amlodipin und Perindopril"
* $atc#C10BX12 "Atorvastatin, Acetylsalicylsäure und Perindopril"
* $atc#C10BX15 "Atorvastatin und Perindopril"
* $atc#C10BX18 "Atorvastatin, Amlodipin und Ramipril"
* $atc#C10BX19 "Atorvastatin, Amlodipin und Candesartan"
// 24	Lovastatin	
* $atc#C10AA02 "Lovastatin"
//* $atc#C10BA01 "Lovastatin und Nicotinsäure" // Already Included
// 25	Rosuvastatin	
//* $atc#A10BH52 "Gemigliptin und Rosuvastatin" // Already Included
* $atc#C10AA07 "Rosuvastatin"
//* $atc#C10BA06 "Rosuvastatin und Ezetimib" // Already Included
//* $atc#C10BA07 "Rosuvastatin und Omega-3-Fettsäuren" // Already Included
//* $atc#C10BA09 "Rosuvastatin und Fenofibrat" // Already Included
* $atc#C10BX05 "Rosuvastatin und Acetylsalicylsäure"
* $atc#C10BX07 "Rosuvastatin, Amlodipin und Lisinopril"
* $atc#C10BX09 "Rosuvastatin und Amlodipin"
* $atc#C10BX10 "Rosuvastatin und Valsartan"
* $atc#C10BX13 "Rosuvastatin, Perindopril und Indapamid"
* $atc#C10BX14 "Rosuvastatin, Amlodipin und Perindopril"
* $atc#C10BX16 "Rosuvastatin und Fimasartan"
* $atc#C10BX17 "Rosuvastatin und Ramipril"
// 26	Ezetimibe
* $atc#C10AX09 "Ezetimib"
//* $atc#C10BA02 "Simvastatin und Ezetimib" // Already Included
//* $atc#C10BA05 "Atorvastatin und Ezetimib" // Already Included
//* $atc#C10BA06 "Rosuvastatin und Ezetimib" // Already Included
* $atc#C10BA10 "Bempedoinsäure und Ezetimib"
//* $atc#C10BA11 "Pravastatin und Ezetimib" // Already Included
//* $atc#C10BA12 "Pravastatin, Ezetimib und Fenofibrat" // Already Included
// 27	PCSK9-Inhibitor	
* $atc#C10AX13 "Evolocumab"
* $atc#C10AX14 "Alirocumab"
* $atc#C10AX16 "Inclisiran"
// 28	Andere Lipidsenker	
* $atc#C10AB "Fibrate"
* $atc#C10AC "Gallensäure bindende Mittel"
* $atc#C10AD "Nicotinsäure und Derivate"
* $atc#C10AP "Pflanzliche Mittel, die den Lipidstoffwechsel beeinflussen"
* $atc#C10AX "Andere Mittel, die den Lipidstoffwechsel beeinflussen" //außer die oben bereits genannten 
* $atc#C10B "MITTEL, DIE DEN LIPIDSTOFFWECHSEL BEEINFLUSSEN, KOMBINATIONEN" //außer die oben bereits vollständig abgedeckten 

// 29	Klasse I-Antiarrhythmika	C01BA (Antiarrhythmika, Klasse Ia)	 
// 29	Klasse I-Antiarrhythmika	C01BB (Antiarrhythmika, Klasse Ib)	 
// 29	Klasse I-Antiarrhythmika	C01BC (Antiarrhythmika, Klasse Ic)	 
// 29	Klasse I-Antiarrhythmika	Kombinationen...	 
// 30	Klasse III-Antiarryhthmika	123	 
// 31	Klasse IV-Antiarrhythmika	 	 
// 32	Metformin	 	 
// 33	DPP-4 Antagonist	 	 
// 34	GLP-1 Agonist	 	 
// 35	andere OAD	 	 
// 36	Insulin	 	 
// 37	Harnsäuresenkende Therapie	 	 
// 38	NSAR	 	 
// 39	Magnesium-Supplementation	 