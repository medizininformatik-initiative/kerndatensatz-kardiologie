ValueSet: MII_VS_Kardio_Medikation
Id: mii-vs-kardio-medikation

Title: "MII VS Kardio Allergene"
Description: "Liste allergener Substanzen kodiert in SNOMED CT."

* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-kardio/ValueSet/Allergene"
//* insert PR_CS_VS_Version
//* insert Publisher //via rulesets TODO
* ^publisher = "https://www.medizininformatik-initiative.de"
* ^status = #draft
* ^experimental = true
* ^date = "2025-03-05"
* ^version = "0.0.1"
* ^purpose = "Dieses Value Set listet relevante allergene Substanzen kodiert in SNOMED CT für die Verwendung in einer Observation zu Allergien."
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement."

// Filtern, auswählen von Codes
// Einzelne Codes 
  //* include codes from system http://www.whocc.no/atc
  //* $atc#C10BA01 "Lovastatin und Nicotinsäure"
// Gruppe hierarchischer Codes via in/is-a/=/!=:
  //* include codes from system http://snomed.info/sct where concept in http://snomed.info/sct#123456
// Filter
  // * include codes from system http://loinc.org where display matches '.*blood.*'

// Allergene Antibiotika
* $sct#764146007 "Penicillin"
* $sct#387170002 "Ampicillin"
* include codes from system $sct where concept in $sct#764147003 "Cephalosporin"
* $sct#372809001 "Tetracyclin"
* $sct#763805006 "Aminoglycoside"
* $sct#396345004 "Carbapenem"
* $sct#395977002 "Fluocinolon"
* $sct#301844007 "Glycopeptide"
* include codes from system $sct where concept in $sct#428787002 "Makrolide"
* $sct#764436002 "Oxazolidinone"
* include codes from system $sct where concept in $sct#387406002 "Sulfonamide"
* $sct#775439002 "Dalfopristin and quinupristin only product" //Eines davon oder beide?
* $sct#324352008 "Dalfopristin- and quinupristin-containing product" //Eines davon oder beide?

// Allergene Kontrastmittel
* include codes from system $sct where concept in $sct#426722004 "Iodinated contrast media"
* $sct#105879004 "Gadolinium AND/OR gadolinium compound (inactive)" // bestimmte Elemente aus 419909004 MRT-Kontrastmittel. TODO Abgleich mit Informationsmodell.

// "Häufige" Allergene
* $sct#260147004 "Hausstaubmilben"
* $sct#33396006 "Nickel"
* $sct#54808007 "Kobalt"
* include codes from system $sct where concept in $sct#256277009 "Gräserpollen"
//Excludes notwendig? TODO Abgleich mit abgestimmtem Informationsmodell!
* $sct#418785009 "Parfüm"
* $sct#255840003 "Kolophonium"
* $sct#111095003 "Formaldehyd"
* $sct#289954006 "Pilzmaterial"
* $sct#733010002 "Pflaster"