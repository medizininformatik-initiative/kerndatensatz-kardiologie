Instance: KardioPatientExample
InstanceOf: MII_PR_Kardio_Patient
Description: "Beispiel für einen Patienten in der Kardiologie abbildet."
* name.use = #official
* name.given[0] = "James"
* name.family = "Pond"

* address[Strassenanschrift].type = #both
* address[Strassenanschrift].line.extension[Strasse].valueString = "Robert-Koch-Straße"
* address[Strassenanschrift].line.extension[Strasse].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address[Strassenanschrift].line.extension[Hausnummer].valueString = "40"
* address[Strassenanschrift].line.extension[Hausnummer].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address[Strassenanschrift].city = "Göttingen"
* address[Strassenanschrift].postalCode = "37075"
* address[Strassenanschrift].country = "DE"

* birthDate = "1990-07-01"
* birthDate.extension[Alter].valueString = "34"

* address[Strassenanschrift].extension[Region].valueString = "Westeuropa"