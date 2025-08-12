ValueSet: MII_VS_Kardio_Geraetetyp_SNOMEDCT
Id: mii-vs-kardio-geraetetyp-snomedct
Title: "MII VS Kardio Gerätetyp [SNOMED CT]"
Description: "Dieses Value Set bildet die Gerätetypen implantierter Kardioverter-Defibrillator, Herzschrittmacher und ventrikuläres Unterstützungssystem ab."

* insert PR_CS_VS_Version
* insert Publisher

* ^status = #draft
* ^experimental = true
* ^date = "2025-05-13"

* include codes from system $sct where concept is-a #72506001 // Implantable defibrillator, device (physical object)
* include codes from system $sct where concept is-a #706004007 // Implantable cardiac pacemaker (physical object)
* include codes from system $sct where concept descendent-of #360064003 // Ventricular assist device (physical object)