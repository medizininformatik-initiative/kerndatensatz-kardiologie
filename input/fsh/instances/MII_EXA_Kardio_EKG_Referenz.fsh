Instance: mii-exa-kardio-ekg-referenz
InstanceOf: MII_PR_Kardio_EKG_Referenz
Title: "MII EXA Kardio EKG Referenz"
Description: "Beispiel einer Referenz auf ein EKG, dessen Rohdaten an einem anderen Ort gespeichert werden."
Usage: #example

* status = #current
* type = http://loinc.org#11524-6 "EKG study"
* subject.display = "Beispielpatient"
* date = "2025-07-17T16:41:22+02:00"
* author.reference = "Device/mii-exa-kardio-ekg-geraet-mortara"
* content.attachment.contentType = urn:ietf:bcp:13#application/dicom "application/dicom"
* content.attachment.url = "https://example.com/EKGs/beispiel-ekg"
* content.attachment.title = "Beispiel EKG an einem anteren Ort"
* content.format = http://ihe.net/fhir/ihe.formatcode.fhir/CodeSystem/formatcode#urn:ihe:iti:xds:2017:mimeTypeSufficient "mimeType Sufficient"