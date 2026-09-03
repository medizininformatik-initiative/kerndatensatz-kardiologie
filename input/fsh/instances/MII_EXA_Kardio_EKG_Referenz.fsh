Instance: mii-exa-kardio-ekg-referenz
InstanceOf: MII_PR_Kardio_EKG_Referenz
Title: "MII EXA Kardio EKG Referenz"
Description: "Beispiel einer Referenz auf ein EKG, dessen Rohdaten an einem anderen Ort gespeichert werden."
Usage: #example

* language = #de-DE
* contained[0] = Beispielpatient
* status = #current
* type = $loinc#11524-6 "EKG study"
* subject = Reference(Beispielpatient)
* date = "2025-07-17T16:41:22+02:00"
* author = Reference(mii-exa-kardio-ekg-geraet-mortara)
* content.attachment.contentType = #application/dicom
* content.attachment.url = "https://example.com/EKGs/beispiel-ekg"
* content.attachment.title = "Beispiel EKG an einem anteren Ort"