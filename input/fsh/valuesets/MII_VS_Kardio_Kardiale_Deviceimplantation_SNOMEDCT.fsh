ValueSet: MII_VS_Kardio_Kardiale_Deviceimplantation_SNOMEDCT
Id: mii-vs-kardio-kardiale-deviceimplantation-scnomedct
Title: "MII VS Kardio Kardiale Devicemimplantation [SNOMED CT]"
Description: "Dieses Value Set bildet die Implantation der kardialen Devices Kardioverter-Defibrillator (ICD), Herzschrittmacher zur kardialen Resynchronationstherapie (CRT) und ventrikuläre Unterstützungssysteme ab (VAD)."

* insert PR_CS_VS_Version
* insert Publisher

* ^status = #draft
* ^experimental = true
* ^date = "2025-05-13"
* ^purpose = "Codes aus diesem Value Set können in einer Prozedur die Implantation eines kardialen Devices in der Kardiologie spezifizieren."

* include codes from system $sct where concept is-a #395218007 // Implantation of internal cardiac defibrillator (procedure)
* include codes from system $sct where concept is-a #307280005 // Implantation of cardiac pacemaker (procedure)
* include codes from system $sct where concept is-a #232967006 // Implantation of left cardiac ventricular assist device (procedure)
* include codes from system $sct where concept is-a #232966002 // Implantation of right cardiac ventricular assist device (procedure)
* include codes from system $sct where concept is-a #232968001 // Implantation of cardiac biventricular assist device (procedure)