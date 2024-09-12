Instance: AnamneseAllgemeinExample
InstanceOf: MII_PR_Kardio_Anamnese_Allgemein
Usage: #example
* identifier[anamnese].id = "Testwert und Test-Element"

* meta.profile[0] = "https://gematik.de/fhir/isik/StructureDefinition/ISiKKoerpergewicht"
* meta.profile[+] = "http://hl7.org/fhir/StructureDefinition/bodyweight"
* meta.profile[+] = "http://fhir.de/StructureDefinition/observation-de-vitalsign-koerpergewicht"
* category = $observation-category#vital-signs
* code.coding[0] = urn:iso:std:iso:11073:10101#188736 "MDC_MASS_BODY_ACTUAL"
* code.coding[+] = $loinc#29463-7
* code.coding[+] = $loinc#29463-7 "Body weight"
* code.coding[+] = $sct#27113001 "Body weight"
* code.text = "Körpergewicht"
* valueQuantity = 79 'kg' "kilogram"
* status = #final
* subject = Reference(Patient/PatientinMusterfrau)
* effectiveDateTime = "2020-10-11"

* component[BMI].code.coding[0] = $loinc#39156-5
* component[BMI].code.coding[+] = $loinc#39156-5 "Body mass index"
* component[BMI].valueQuantity = 21.5 'kg/m2' "kg/m²"