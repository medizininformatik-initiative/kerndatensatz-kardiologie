ValueSet: MII_VS_Kardio_Gewichtsveraenderung_SNOMED
Id: mii-vs-kardio-gewichtsveraenderung-snomed
Title: "MII_VS_Kardio_Gewichtsveraenderung_SNOMED"
Description: "Beschreibung von Gewichtsveränderungen"

* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-gewichtsveraenderung-snomed"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft
* ^experimental = true
* ^date = "2025-03-05"
* ^version = "0.0.1"
//* ^purpose = "."
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement."

// Filtern, auswählen von Codes
// Einzelne Codes 
  //* include codes from system http://www.whocc.no/atc
  //* $atc#C10BA01 "Lovastatin und Nicotinsäure"
// Gruppe hierarchischer Codes via in/is-a/=/!=:
  //* include codes from system http://snomed.info/sct where concept in||is-a http://snomed.info/sct#123456
  // Mit "in" statt "is-a" haben wir im Simplifier den Text "Include codes from SNOMED_CT where concept In 256277009"
// Filter
  // * include codes from system http://loinc.org where display matches '.*blood.*'

// Gewichtsveraenderung
* $sct#11717701000119108 "Slow weight gain"
* $sct#161833006 "Abnormal weight gain"
* $sct#416528001 "Intentional weight loss"
* $sct#448765001 "Unintentional weight loss"