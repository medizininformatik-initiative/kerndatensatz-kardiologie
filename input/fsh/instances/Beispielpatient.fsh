Instance: Beispielpatient
Title: "Beispielpatient"
Description: "Ein Beispielpatient für die Verwendung in Beispielinstanzen."
InstanceOf: Patient
Usage:  #inline

* identifier.use = #usual
* identifier.type = $v2-0203#MR "Medical record number"
* identifier.value = "0123456789"
* name.use = #official
* name.family = "Mustermann"
* name.given = "Max"
* gender = #male
* birthDate = "1980-01-01"
* address.type = #both
* address.line = "Musterstraße 1"
* address.city = "Musterstadt"
* address.postalCode = "12345"
* address.country = "DE"