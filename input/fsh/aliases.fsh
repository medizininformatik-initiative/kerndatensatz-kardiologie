// CodeSystems
Alias: $loinc = http://loinc.org //|2.81
Alias: $sct = http://snomed.info/sct //|http://snomed.info/sct/900000000000207008/version/20250701
Alias: $ucum = http://unitsofmeasure.org //|2024.7.1
Alias: $m49-geographic-region = http://unstats.un.org/unsd/methods/m49/m49.htm
Alias: $atc = http://fhir.de/CodeSystem/bfarm/atc //|2026
Alias: $icd-10-gm = http://fhir.de/CodeSystem/bfarm/icd-10-gm //|2026
Alias: $alpha-id = http://fhir.de/CodeSystem/bfarm/alpha-id
Alias: $ops = http://fhir.de/CodeSystem/bfarm/ops
Alias: $mdc = urn:iso:std:iso:11073:10101 //|2024-12-05 //2.0.1 //ISO Nomenclature - Point-of-care medical device communication, see https://www.iso.org/standard/37890.html, https://terminology.hl7.org/5.5.0/CodeSystem-v3-mdc.html
Alias: $acribis-follow-up = https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-follow-up //sollte in qn examples verwendung finden?
Alias: $ath-ereignis = https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-atherosklerotisches-ereignis
Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203
Alias: $v2-0532 = http://terminology.hl7.org/CodeSystem/v2-0532
Alias: $v3-ActCode = http://terminology.hl7.org/CodeSystem/v3-ActCode
Alias: $condition-clinical = http://terminology.hl7.org/CodeSystem/condition-clinical
Alias: $condition-ver-status = http://terminology.hl7.org/CodeSystem/condition-ver-status
Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $data-absent-reason = http://terminology.hl7.org/CodeSystem/data-absent-reason // |4.0.1

//ValueSets ("-vs"-Suffix)
Alias: $icd10-gm-vs = http://fhir.de/ValueSet/bfarm/icd-10-gm
Alias: $alpha-id-vs = http://fhir.de/ValueSet/bfarm/alpha-id
Alias: $ops-vs = http://fhir.de/ValueSet/bfarm/ops
Alias: $diagnoses-sct-vs = https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/ValueSet/diagnoses-sct
Alias: $prozedur-sct-vs = https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/ValueSet/procedures-sct
Alias: $condition-category-vs = http://terminology.hl7.org/ValueSet/condition-category
Alias: $observation-category-vs = http://hl7.org/fhir/ValueSet/observation-category
Alias: $devicemetric-type-vs = http://hl7.org/fhir/ValueSet/devicemetric-type
Alias: $procedure-device-action-codes-vs = http://hl7.org/fhir/ValueSet/device-action
Alias: $v2-0532-vs = http://terminology.hl7.org/ValueSet/v2-0532 // Auswahl aus http://terminology.hl7.org/ValueSet/v2-0532

// Structure Definitions
Alias: $data-absent-reason-sd = http://hl7.org/fhir/StructureDefinition/data-absent-reason
Alias: $ISiKSnomedCTCoding = https://gematik.de/fhir/isik/StructureDefinition/ISiKSnomedCTCoding
Alias: $ISiKLoincCoding = https://gematik.de/fhir/isik/StructureDefinition/ISiKLoincCoding

// Example CodeSystems mit konkreter Versionsangabe
Alias: $kds-kardio-version  = 2026.0.0-alpha.3
Alias: $example-loinc       = http://loinc.org|2.82
Alias: $example-sct         = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20250701
Alias: $example-ucum        = http://unitsofmeasure.org|2024.7.1 //2.2
Alias: $example-m49-geographic-region = http://unstats.un.org/unsd/methods/m49/m49.htm
Alias: $example-atc         = http://fhir.de/CodeSystem/bfarm/atc|2026
Alias: $example-icd-10-gm   = http://fhir.de/CodeSystem/bfarm/icd-10-gm|2026
Alias: $example-alpha-id    = http://fhir.de/CodeSystem/bfarm/alpha-id|2026
Alias: $example-ops         = http://fhir.de/CodeSystem/bfarm/ops|2026
Alias: $example-mdc         = urn:iso:std:iso:11073:10101|2024-12-05 //ISO Nomenclature - Point-of-care medical device communication, see https://www.iso.org/standard/37890.html, https://terminology.hl7.org/5.5.0/CodeSystem-v3-mdc.html
Alias: $example-ath-ereignis = https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-atherosklerotisches-ereignis|2026.0.0-alpha.3
Alias: $example-acribis-follow-up = https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-follow-up|2026.0.0-alpha.3
Alias: $example-v2-0203     = http://terminology.hl7.org/CodeSystem/v2-0203|5.0.0 // in Beispielpatient
Alias: $example-v2-0532     = http://terminology.hl7.org/CodeSystem/v2-0532|3.0.0
Alias: $example-v3-ActCode  = http://terminology.hl7.org/CodeSystem/v3-ActCode|2018-08-12
Alias: $example-condition-clinical = http://terminology.hl7.org/CodeSystem/condition-clinical|4.0.1
Alias: $example-condition-ver-status = http://terminology.hl7.org/CodeSystem/condition-ver-status|4.0.1
Alias: $example-condition-category = http://terminology.hl7.org/CodeSystem/condition-category|4.0.1
Alias: $example-observation-category = http://terminology.hl7.org/CodeSystem/observation-category|4.0.1
Alias: $example-data-absent-reason = http://terminology.hl7.org/CodeSystem/data-absent-reason|4.0.1

