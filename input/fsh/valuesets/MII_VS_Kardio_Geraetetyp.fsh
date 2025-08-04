ValueSet: MII_VS_Kardio_Geraetetyp
Id: mii-vs-kardio-geraetetyp
Title: "MII VS Kardio Gerätetyp"
Description: "Dieses Value Set bildet die Gerätetypen implantierter Kardioverter-Defibrillator, Herzschrittmacher und ventrikuläres Unterstützungssystem ab."

* insert PR_CS_VS_Version
* insert Publisher

* ^status = #draft
* ^experimental = true
* ^date = "2025-05-13"
* ^purpose = "Dieses Value Set bildet den Typ eines implantierten Gerätes in der Kardiologie ab."

* include codes from system $sct where concept is-a #72506001 // Implantable defibrillator, device (physical object)
* include codes from system $sct where concept is-a #706004007 // Implantable cardiac pacemaker (physical object)
* include codes from system $sct where concept descendent-of #360064003 // Ventricular assist device (physical object)