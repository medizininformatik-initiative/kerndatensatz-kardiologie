ValueSet: MII_VS_Kardio_Allergene_SNOMEDCT
Id: mii-vs-kardio-allergene-snomedct
Title: "MII VS Kardio Allergene [SNOMED CT]"
Description: "Liste von Substanzen"

* insert PR_CS_VS_Version
* insert Publisher

* ^status = #draft
* ^experimental = true
* ^date = "2025-08-29"
* ^purpose = "Dieses Value Set listet relevante Substanzen kodiert in SNOMED CT für die Verwendung in einer Observation zu Allergien."
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement."

// Allergene Antibiotika
// TODO: Viele der Codes haben Kind-Konzepte: Substance with ... structure and antibacterial mechanism of action (substance). Sollen wir auf diese Codes beschränken?
* include codes from system $sct where concept is-a $sct#764146007 // "Substance with penicillin structure (substance)" (als Kind-Konzepte: Ampicillin)
* include codes from system $sct where concept is-a $sct#764147003 // "Cephalosporin (substance)"
* include codes from system $sct where concept is-a $sct#372809001 // "Tetracyclin (substance)"
* include codes from system $sct where concept is-a $sct#763805006 // "Aminoglycoside (substance)"
* include codes from system $sct where concept is-a $sct#396345004 // "Carbapenem (substance)"
* include codes from system $sct where concept is-a $sct#395977002 // "Fluocinolon (substance)"
* include codes from system $sct where concept is-a $sct#301844007 // "Glycopeptide (substance)"
* include codes from system $sct where concept is-a $sct#428787002 // "Makrolide (substance)"
* include codes from system $sct where concept is-a $sct#764436002 // "Oxazolidinone (substance)"
* include codes from system $sct where concept is-a $sct#387406002 // "Sulfonamide (substance)"
* include codes from system $sct where concept is-a $sct#324352008 // "Product containing dalfopristin and quinupristin (medicinal product)"
* $sct#372786004 // "Clindamycin (substance)"
* $sct#372677003 // "Lincomycin (substance)"

// TODO: Statt SNOMED eignen sich vielleicht ATC-Codes besser?

// Allergene Kontrastmittel
* include codes from system $sct where concept is-a $sct#426722004 // "Iodinated contrast media"
* include codes from system $sct where concept is-a $sct#1348311005 // "Gadolinium-based contrast media (substance)"

// "Häufige" Allergene
* include codes from system $sct where concept is-a $sct#260147004 // "House dust mite (organism)"
* include codes from system $sct where concept is-a $sct#33396006 // "Nickel (substance)"
* include codes from system $sct where concept is-a $sct#54808007 // "Cobalt (substance)"
* include codes from system $sct where concept is-a $sct#256277009 // "Grass pollen (substance)"
* include codes from system $sct where concept is-a $sct#418785009 // "Perfume (substance)"
* include codes from system $sct where concept is-a $sct#255840003 // "Colophony (substance)"
* include codes from system $sct where concept is-a $sct#111095003 // "Formaldehyde (substance)"
* include codes from system $sct where concept is-a $sct#289954006 // "Fungal material (substance)"
* include codes from system $sct where concept is-a $sct#830076001 // "Adhesive plaster (physical object)"