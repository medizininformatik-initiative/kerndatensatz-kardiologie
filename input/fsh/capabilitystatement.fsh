Alias: $exp = http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation

RuleSet: SupportResource (resource, expectation)
* rest.resource[+].type = #{resource}
* rest.resource[=].extension[0].url = $exp
* rest.resource[=].extension[0].valueCode = {expectation}

RuleSet: Profile (profile)
* rest.resource[=].profile = "{profile}"

RuleSet: SupportProfile (profile, expectation)
* rest.resource[=].supportedProfile[+] = "{profile}"
* rest.resource[=].supportedProfile[=].extension[0].url = $exp
* rest.resource[=].supportedProfile[=].extension[0].valueCode = {expectation}

RuleSet: SupportInteraction (interaction, expectation)
* rest.resource[=].interaction[+].code = {interaction}
* rest.resource[=].interaction[=].extension[0].url = $exp
* rest.resource[=].interaction[=].extension[0].valueCode = {expectation}

RuleSet: SupportSearchParam (name, canonical, type, expectation)
* rest.resource[=].searchParam[+].name = "{name}"
* rest.resource[=].searchParam[=].definition = "{canonical}"
* rest.resource[=].searchParam[=].type = {type}
* rest.resource[=].searchParam[=].extension[0].url = $exp
* rest.resource[=].searchParam[=].extension[0].valueCode = {expectation}

Instance: mii-cps-kardio-capabilitystatement
InstanceOf: CapabilityStatement
Usage: #definition
* insert Instance_Publisher
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CapabilityStatement/metadata"
* name = "MII_CPS_Kardio_CapabilityStatement"
* title = "MII CPS Kardio CapabilityStatement"
* status = #draft
* experimental = true
* date = "2026-08-18"
* insert Version
* publisher = "Medizininformatik Initiative"
* contact.telecom.system = #url
* contact.telecom.value = "https://www.medizininformatik-initiative.de"
* description = "CapabilityStatement des Erweiterungsmoduls Kardiologie der Medizininformatik-Initiative (Umsetzungsstufe 1, alpha). Beschreibt die verpflichtenden Interaktionen, Profile und Suchparameter eines konformen Systems."
* jurisdiction = urn:iso:std:iso:3166#DE "Germany"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #application/fhir+xml
* format[+] = #application/fhir+json
* rest.mode = #server

// Condition requirements - Diagnoses (Klappenvitium, allgemeine Diagnose)
* insert SupportResource(Condition, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/Condition)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-diagnose, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-klappenvitium, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)
* insert SupportSearchParam(code, http://hl7.org/fhir/SearchParameter/clinical-code, #token, #SHALL)
* insert SupportSearchParam(subject, http://hl7.org/fhir/SearchParameter/clinical-patient, #reference, #SHALL)
* insert SupportSearchParam(encounter, http://hl7.org/fhir/SearchParameter/Condition-encounter, #reference, #SHALL)
* insert SupportSearchParam(onset-date, http://hl7.org/fhir/SearchParameter/Condition-onset-date, #date, #SHALL)
* insert SupportSearchParam(category, http://hl7.org/fhir/SearchParameter/Condition-category, #token, #SHALL)
* insert SupportSearchParam(clinical-status, http://hl7.org/fhir/SearchParameter/Condition-clinical-status, #token, #SHALL)
* insert SupportSearchParam(verification-status, http://hl7.org/fhir/SearchParameter/Condition-verification-status, #token, #SHALL)

// Observation requirements (Anamnese, Scores, Risikofaktoren, Diagnostik, EKG)
* insert SupportResource(Observation, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/Observation)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-anzahl-kh-aufenthalte-wg-hf, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-atherosklerotisches-erstereignis, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-diagnose-prozedur-nein-unbekannt, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-ekg-annotation, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-geraeteprogrammierung, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-linksventrikulaere-ejektionsfraktion, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-observation-rauchen, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-score-modifizierte-rankin-skala, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-score-nyha, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)
* insert SupportSearchParam(code, http://hl7.org/fhir/SearchParameter/clinical-code, #token, #SHALL)
* insert SupportSearchParam(patient, http://hl7.org/fhir/SearchParameter/clinical-patient, #reference, #SHALL)
* insert SupportSearchParam(subject, http://hl7.org/fhir/SearchParameter/Observation-subject, #reference, #SHALL)
* insert SupportSearchParam(date, http://hl7.org/fhir/SearchParameter/clinical-date, #date, #SHALL)
* insert SupportSearchParam(category, http://hl7.org/fhir/SearchParameter/Observation-category, #token, #SHALL)
* insert SupportSearchParam(status, http://hl7.org/fhir/SearchParameter/Observation-status, #token, #SHALL)
* insert SupportSearchParam(component-code, http://hl7.org/fhir/SearchParameter/Observation-component-code, #token, #SHALL)
* insert SupportSearchParam(has-member, http://hl7.org/fhir/SearchParameter/Observation-has-member, #reference, #SHALL)
* insert SupportSearchParam(value-quantity, http://hl7.org/fhir/SearchParameter/Observation-value-quantity, #quantity, #SHALL)

// Procedure requirements (EKG-Durchfuehrung, Device-Implantation)
* insert SupportResource(Procedure, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/Procedure)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-ekg-durchfuehrung, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-kardiale-deviceimplantation, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)
* insert SupportSearchParam(code, http://hl7.org/fhir/SearchParameter/clinical-code, #token, #SHALL)
* insert SupportSearchParam(subject, http://hl7.org/fhir/SearchParameter/clinical-patient, #reference, #SHALL)
* insert SupportSearchParam(patient, http://hl7.org/fhir/SearchParameter/clinical-patient, #reference, #SHALL)
* insert SupportSearchParam(date, http://hl7.org/fhir/SearchParameter/clinical-date, #date, #SHALL)
* insert SupportSearchParam(status, http://hl7.org/fhir/SearchParameter/Procedure-status, #token, #SHALL)
* insert SupportSearchParam(category, http://hl7.org/fhir/SearchParameter/Procedure-category, #token, #SHALL)

// Device requirements (Device, EKG-Geraet, EKG-Kanal)
* insert SupportResource(Device, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/Device)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-device, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-ekg-geraet, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-ekg-kanal, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)
* insert SupportSearchParam(patient, http://hl7.org/fhir/SearchParameter/clinical-patient, #reference, #SHALL)
* insert SupportSearchParam(type, http://hl7.org/fhir/SearchParameter/Device-type, #token, #SHALL)
* insert SupportSearchParam(manufacturer, http://hl7.org/fhir/SearchParameter/Device-manufacturer, #string, #SHALL)
* insert SupportSearchParam(device-name, http://hl7.org/fhir/SearchParameter/Device-device-name, #string, #SHALL)

// DeviceMetric requirements (NBG-Schrittmachermodus)
* insert SupportResource(DeviceMetric, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/DeviceMetric)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-nbg-schrittmachermodus, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)
* insert SupportSearchParam(type, http://hl7.org/fhir/SearchParameter/DeviceMetric-type, #token, #SHALL)
* insert SupportSearchParam(device, http://hl7.org/fhir/SearchParameter/DeviceMetric-device, #reference, #SHALL)

// DeviceDefinition requirements (EKG-Geraetedefinition)
* insert SupportResource(DeviceDefinition, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/DeviceDefinition)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-ekg-geraetedefinition, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)
* insert SupportSearchParam(type, http://hl7.org/fhir/SearchParameter/DeviceDefinition-type, #token, #SHALL)
* insert SupportSearchParam(manufacturer, http://hl7.org/fhir/SearchParameter/DeviceDefinition-manufacturer, #string, #SHALL)

// DocumentReference requirements (EKG-Referenz)
* insert SupportResource(DocumentReference, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/DocumentReference)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-ekg-referenz, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)
* insert SupportSearchParam(patient, http://hl7.org/fhir/SearchParameter/clinical-patient, #reference, #SHALL)
* insert SupportSearchParam(type, http://hl7.org/fhir/SearchParameter/DocumentReference-type, #token, #SHALL)
* insert SupportSearchParam(date, http://hl7.org/fhir/SearchParameter/clinical-date, #date, #SHALL)
* insert SupportSearchParam(status, http://hl7.org/fhir/SearchParameter/DocumentReference-status, #token, #SHALL)