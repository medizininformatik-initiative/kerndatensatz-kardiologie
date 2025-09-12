Profile: MII_PR_Kardio_EKG_Referenz
Parent: DocumentReference
Id: mii-pr-kardio-ekg-referenz
Title: "MII PR Kardio EKG Referenz"
Description: "Profil zur Referenzierung eines EKGs dessen Rohdaten an einem anderen Ort gespeichert werden."

* status MS

* type 1.. MS
* type = http://loinc.org#11524-6

* subject 1.. MS
* content 1..*
* date 1.. MS

* author 1.. MS
* author only Reference(Device)

* content.attachment.contentType MS
* content.attachment.url 1.. MS

Instance: mii-exa-kardio-ekg-referenz
InstanceOf: MII_PR_Kardio_EKG_Referenz
Title: "MII EXA Kardio EKG Referenz"
Description: "Beispiel einer Referenz auf ein EKG, dessen Rohdaten an einem anderen Ort gespeichert werden."
Usage: #example

* status = #active
* type = http://loinc.org#11524-6 "ECG Document"
* subject.reference = "Patient/mii-exa-person-patient-minimal"
* date = "2025-07-17T16:41:22+02:00"
* author.reference = "Device/mii-exa-kardio-ekg-geraet-mortara"
* content.attachment.contentType = urn:ietf:bcp:13#application/dicom "application/dicom"
* content.attachment.url = "https://example.com/EKGs/beispiel-ekg"
* content.attachment.title = "Beispiel EKG an einem anteren Ort"
* content.format = http://ihe.net/fhir/ValueSet/IHE.FormatCode.codesystem#urn:ihe:iti:xds:2017:mimeTypeSufficient "mimeType Sufficient"