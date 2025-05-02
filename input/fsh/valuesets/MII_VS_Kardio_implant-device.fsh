ValueSet: MII_VS_Kardio_Implant_Device_EMDN
Id: mii-vs-kardio-implant-device-emdn
Title: "MII_VS_Kardio_Implant_Device_EMDN"
Description: "Implantierbare Devices nach EMDN"

* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-implant-device-emdn"
//* insert PR_CS_VS_Version
//* insert Publisher //via rulesets TODO
* ^publisher = "https://www.medizininformatik-initiative.de"
* ^status = #draft
* ^experimental = true
* ^date = "2025-03-05"
* ^version = "0.0.1"
//* ^purpose = "." // TODO Copyright-Rule/Invariant?
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

// TODO: Abgleich mit abgestimmtem Informationsmodell
//ICD
* $emdn#J0105 "IMPLANTABLE DEFIBRILLATORS"
* $emdn#J01900102 "PERMANENT DEFIBRILATOR LEADS (STEROID RELEASE INCLUDED)"
//CRT
* $emdn#J01010401 "IMPLANTABLE TRIPLE CHAMBER PACEMAKERS FOR CARDIAC RESYNCHRONIZATION (TR)"

//AAI
* $emdn#J0190010101 "ENDOCARDIAL ATRIAL AND VENTRICULAR LEADS, UNIPOLAR"
* $emdn#J019001010101 "ATRIAL LEADS, PASSIVE FIXATION"
* $emdn#J0190010102 "ENDOCARDIAL ATRIAL AND VENTRICULAR LEADS, BIPOLAR (WITH ACTIVE OR PASSIVE FIXATION)"

//VVI - TODO: hier muss evtl. noch ergaenzt werden. Abgleich mit abgestimmtem Informationsmodell
* $emdn#J010301 "IMPLANTABLE MONOVENTRICULAR AND BIVENTRICULAR ASSISTANCE SYSTEMS"
* $emdn#J010502 "IMPLANTABLE DUAL CHAMBER DEFIBRILLATORS"
//Weitere Codes -> https://webgate.ec.europa.eu/dyna2/emdn/Z1206

//DDD
* $emdn#J010103 "IMPLANTABLE DUAL CHAMBER PACEMAKERS"
* $emdn#J01010301 "IMPLANTABLE DUAL CHAMBER PACEMAKERS (DC)"
* $emdn#J01010302 "IMPLANTABLE DUAL CHAMBER PACEMAKERS WITH SENSOR (DR)"

* $emdn#J01030102 "IMPLANTABLE LEFT MONOVENTRICULAR ASSISTANCE SYSTEMS (LVAD)"
* $emdn#J01030101 "IMPLANTABLE RIGHT MONOVENTRICULAR ASSISTANCE SYSTEMS (RVAD)"
* $emdn#J01030103 "IMPLANTABLE BIVENTRICULAR ASSISTANCE SYSTEMS (BIVAD)"
