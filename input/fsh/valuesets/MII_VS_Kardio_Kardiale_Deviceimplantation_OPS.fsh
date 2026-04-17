ValueSet: MII_VS_Kardio_Kardiale_Deviceimplantation_OPS
Id: mii-vs-kardio-kardiale-deviceimplantation-ops
Title: "MII VS Kardio Kardiale Devicemimplantation [OPS]"
Description: "Dieses Value Set bildet die Implantation der kardialen Devices Kardioverter-Defibrillator (ICD), Herzschrittmacher zur kardialen Resynchronationstherapie (CRT) und ventrikuläre Unterstützungssysteme ab (VAD)."

* insert PR_CS_VS_Version
* insert Publisher

* ^status = #active
* ^experimental = false
* ^date = "2026-04-17"
* ^purpose = "Codes aus diesem Value Set können in einer Prozedur die Implantation eines kardialen Devices in der Kardiologie spezifizieren."

* include codes from system $ops where concept is-a #5-376 // Implantation und Entfernung eines herzunterstützenden Systems, offen chirurgisch
* include codes from system $ops where concept is-a #5-377 // Implantation eines Herzschrittmachers, Defibrillators und Ereignis-Rekorders
* $data-absent-reason#asked-unknown // http://terminology.hl7.org/CodeSystem/data-absent-reason