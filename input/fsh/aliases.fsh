// CodeSystems/Terminologien
Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct
Alias: $atc = http://fhir.de/CodeSystem/bfarm/atc  // oder http://www.whocc.no/atc 
Alias: $ucum = http://unitsofmeasure.org

// CodeSystems
Alias: $anamnese-antwort = https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-ex-kardio-anamneseantwort
Alias: $v2-0532 = http://terminology.hl7.org/CodeSystem/v2-0532
Alias: $smoking-units = https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-rauchen
Alias: $mdc = urn:iso:std:iso:11073:10101
Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $mRS-cs = https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-cs-kardio-modifizierte-rankin-skala
Alias: $ausschluss-cs = https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-ausschlusskriterien-acribis-scores
Alias: $cs-acribis-follow-up = https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-follow-up

//ValueSets
Alias: $condition-category-vs = http://terminology.hl7.org/ValueSet/condition-category
Alias: $observation-category-vs = http://hl7.org/fhir/ValueSet/observation-category
Alias: $extended-condition-severity = https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-extended-condition-severity
Alias: $atherosklerotische-ereignisse = https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-atherosklerotische-erstereignisse
Alias: $mRS = https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-mrs-stufen
Alias: $nyha-class-vs = https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-nyha-klassen-snomed
Alias: $ausschlusskriterien-acribis-scores-vs = https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-ausschlusskriterien-acribis-scores
Alias: $device-type = http://hl7.org/fhir/ValueSet/device-type
Alias: $devicemetric-type = http://hl7.org/fhir/ValueSet/devicemetric-type
Alias: $geraetetyp = https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-geraetetyp
Alias: $geraeteprogrammierung = https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-geraeteprogrammierung
Alias: $koerperstelle = https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-kardiale-deviceimplantation-koerperstelle
Alias: $kardiale-deviceimplantation = https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-kardiale-deviceimplantation
Alias: $procedure-device-action-codes = http://hl7.org/fhir/ValueSet/device-action
Alias: $vs-v2-0532 = http://terminology.hl7.org/ValueSet/v2-0532
Alias: $ekg-kanaele = https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-ekg-kanaele
Alias: $mdc-objects-devices = https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-mdc-objects-devices

//_________________
Alias: $emdn = urn:oid:1.2.250.1.213.2.68 //urn:oid:1.2.250.1.213.2.68 //https://webgate.ec.europa.eu/dyna2/emdn/Z1206
Alias: $null-flavor = http://hl7.org/fhir/v3/NullFlavor


//_________________

//Alias: $observation-de-vitalsign-koerpergewicht = http://fhir.de/StructureDefinition/observation-de-vitalsign-koerpergewicht

// Others not yet used - to be deleted?
Alias: $v2-0074 = http://terminology.hl7.org/CodeSystem/v2-0074
Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203
Alias: $data-absent-reason = http://terminology.hl7.org/CodeSystem/data-absent-reason
Alias: $MII-Reference = https://www.medizininformatik-initiative.de/fhir/core/StructureDefinition/MII-Reference

// Kardio-Diagnose
Alias: $CodingICD10GM = http://fhir.de/StructureDefinition/CodingICD10GM
Alias: $CodingAlphaID = http://fhir.de/StructureDefinition/CodingAlphaID
Alias: $lebensphase = http://fhir.de/StructureDefinition/lebensphase
Alias: $icd-10-gm-system = http://fhir.de/CodeSystem/bfarm/icd-10-gm
Alias: $icd-10-gm = http://fhir.de/ValueSet/bfarm/icd-10-gm
Alias: $alpha-id = http://fhir.de/ValueSet/bfarm/alpha-id
Alias: $diagnoses-sct = https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/ValueSet/diagnoses-sct
Alias: $mii-vs-diagnose-orphanet = https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/ValueSet/mii-vs-diagnose-orphanet
Alias: $mii-vs-diagnose-bodystructure-snomed = https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/ValueSet/mii-vs-diagnose-bodystructure-snomed
// Alias: $MIIDiagnoseVorhanden = http://terminology.hl7.org/CodeSystem/v2-0532
Alias: $mii-diagnose-vorhanden = http://terminology.hl7.org/ValueSet/yes-no-unknown-not-asked
Alias: $condition-related = http://hl7.org/fhir/StructureDefinition/condition-related
Alias: $condition-assertedDate = http://hl7.org/fhir/StructureDefinition/condition-assertedDate
// Lebensmittelpunkt
Alias: $m49-geographic-region = http://unstats.un.org/unsd/methods/m49/m49.htm