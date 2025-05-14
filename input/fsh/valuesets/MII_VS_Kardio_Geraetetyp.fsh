ValueSet: MII_VS_Kardio_Geraetetyp
Id: mii-vs-kardio-geraetetyp
Title: "MII VS Kardio Gerätetyp"
Description: "Dieses Value Set bildet die Gerätetypen implantierter Kardioverter-Defibrillator, Herzschrittmacher zur kardialen Resynchronationstherapie und ventrikuläre Unterstützungssysteme ab."

* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-05-13"
* ^publisher = "Medizininformatik Initative"
* ^purpose = "Dieses Value Set bildet den Typ eines implantierten Gerätes in der Kardiologie ab."

* include codes from system $sct where concept is-a #72506001 "Implantable defibrillator, device (physical object)"
* include codes from system $sct where concept is-a #704708004 "Cardiac resynchronization therapy implantable pacemaker (physical object)"
* include codes from system $sct where concept descendent-of #360064003 "Ventricular assist device (physical object)"