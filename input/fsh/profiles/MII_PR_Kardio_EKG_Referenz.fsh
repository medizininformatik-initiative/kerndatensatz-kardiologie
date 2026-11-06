Profile: MII_PR_Kardio_EKG_Referenz
Parent: DocumentReference
Id: mii-pr-kardio-ekg-referenz
Title: "MII PR Kardio EKG Referenz"
Description: "Profil zur Referenzierung eines EKGs dessen Rohdaten an einem anderen Ort gespeichert werden."

* insert PR_CS_VS_Version
* insert Publisher

* ^language = #de
* ^status = #draft
* ^experimental = true
* ^date = "2026-11-06"

* status MS

* type 1.. MS
* type.coding 1.. MS
* type.coding.system 1.. MS
// * type.coding.version 1.. MS
* type.coding.code 1.. MS
* type = $loinc#11524-6

* subject 1.. MS
* content 1.. MS
* date 1.. MS

* author 1.. MS
* author only Reference(MII_PR_Kardio_EKG_Geraet)
* author ^short = "EKG-Gerät, mit dem die Daten aufgezeichnet wurden"

* context MS
* context.period MS
* context.period ^short = "Zeitraum (Datum und Uhrzeit) der EKG-Aufzeichnung"
* context.period ^comment = "Kann identisch zum Durchführungszeitraum der EKG-Durchführung (Procedure.performed[x]) sein."
* context.period.start MS
* context.period.end MS

* content.attachment.contentType MS
* content.attachment.contentType from MII_VS_Kardio_EKG_Dateiformat (extensible)
* content.attachment.contentType ^short = "Daten- bzw. Dateiformat der referenzierten EKG-Daten (MIME-Type)"
* content.attachment.url 1.. MS