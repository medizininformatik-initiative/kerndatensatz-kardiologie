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