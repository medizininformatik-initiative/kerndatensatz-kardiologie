ValueSet: MII_VS_Kardio_Geraetetyp_SNOMEDCT
Id: mii-vs-kardio-geraetetyp-snomedct
Title: "MII VS Kardio Gerätetyp [SNOMED CT]"
Description: "Dieses Value Set bildet die Gerätetypen implantierter Kardioverter-Defibrillator, Herzschrittmacher und ventrikuläres Unterstützungssystem ab."

* insert PR_CS_VS_Version
* insert Publisher

* ^language = #de
* ^status = #active
* ^experimental = false
* ^date = "2025-09-05"

* include codes from system $sct where concept is-a #72506001 // Implantable defibrillator, device (physical object)
* include codes from system $sct where concept is-a #706004007 // Implantable cardiac pacemaker (physical object)
* include codes from system $sct where concept descendent-of #360064003 // Ventricular assist device (physical object)
* $data-absent-reason#asked-unknown // http://terminology.hl7.org/CodeSystem/data-absent-reason