ValueSet: MII_VS_Kardio_EKG_Dateiformat
Id: mii-vs-kardio-ekg-dateiformat
Title: "MII VS Kardio EKG Dateiformat"
Description: "MIME-Types für Formate, in denen referenzierte EKG-Daten vorliegen können (z.B. DICOM Waveform, HL7 aECG als XML)."

* insert PR_CS_VS_Version
* insert Publisher

* ^language = #de
* ^status = #draft
* ^experimental = true
* ^date = "2026-11-06"

* $mimetypes#application/dicom "DICOM"
* $mimetypes#application/xml "XML (z.B. HL7 aECG)"
