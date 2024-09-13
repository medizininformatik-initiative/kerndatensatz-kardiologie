Instance: BMIExample
InstanceOf: MII_PR_Kardio_BMI
Usage: #example
//* identifier[anamnese].id = "Testwert und Test-Element"
//* meta.profile[0] = "https://gematik.de/fhir/isik/StructureDefinition/ISiKKoerpergewicht"
//* meta.profile[+] = "http://hl7.org/fhir/StructureDefinition/bodyweight"
//* meta.profile[+] = "http://fhir.de/StructureDefinition/observation-de-vitalsign-koerpergewicht"
//* category = $observation-category#vital-signs
//* code.coding[0] = urn:iso:std:iso:11073:10101#188736 "MDC_MASS_BODY_ACTUAL"
//* code.coding[+] = $loinc#29463-7
//* code.coding[+] = $loinc#29463-7 "Body weight"
//* code.coding[+] = $sct#27113001 "Body weight"

* category[VSCat] = $observation-category#vital-signs

* code.coding[loinc] = $loinc#39156-5 "Body mass index"
* code.coding[snomed] = $sct#60621009 "Body mass index"
* code.text = "Body mass index"
* valueQuantity.value = 21.5 //#kg/m2 "kg/m²"
* valueQuantity.system = $unitsofmeasure
* valueQuantity.code = #kg/m2
* valueQuantity.unit = "kg/m²"

* status = #final
* subject = Reference(Patient/PatientinMusterfrau)
* effectiveDateTime = "2020-10-11"