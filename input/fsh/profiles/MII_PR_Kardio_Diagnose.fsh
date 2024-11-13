// First Draft
Profile: MII_PR_Kardio_Diagnose_Observation
Id: mii-pr-kardio-diagnose-observation
Parent: Observation //MII_PR_Diagnose_Condition //Observation

//Vererbung siehe:
// https://simplifier.net/MII-Basismodul-Diagnose-2024/MII_PR_Diagnose_Condition/~overview (MII KDS Diagnose)
// > fhir install de.medizininformatikinitiative.kerndatensatz.diagnose 2024.0.0
// https://simplifier.net/packages/hl7.fhir.r4.core/4.0.1/files/82200 (FHIR Core R4 Condition)

Title: "MII PR Kardio Diagnose"
Description: "Erster Draft eines Profils zur Abbildung einer Diagnose auf Basis von Angaben des Arztes oder Patienten (Performer) als Observation."

* performer 1..1
* subject 1..1 MS

* extension contains 
    $condition-related named ReferenzPrimaerdiagnose 0..1 MS and
    $condition-assertedDate named Feststellungsdatum 0..1 MS
* insert Translation(extension[Feststellungsdatum] ^short, de-DE, Feststellungsdatum)
* insert Translation(extension[Feststellungsdatum] ^short, en-US, Asserted date)
* insert Translation(extension[Feststellungsdatum] ^definition, de-DE, Datum\, an dem die Diagnose erstmals festgestellt wurde)
* insert Translation(extension[Feststellungsdatum] ^definition, en-US, Date the condition was first asserted)

* code 1.. MS
//Translation
* code ^short.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* code ^short.extension[=].extension[0].url = "lang"
* code ^short.extension[=].extension[=].valueCode = #de-DE
* code ^short.extension[=].extension[+].url = "content"
* code ^short.extension[=].extension[=].valueString = "Code"
* code ^short.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* code ^short.extension[=].extension[0].url = "lang"
* code ^short.extension[=].extension[=].valueCode = #en-US
* code ^short.extension[=].extension[+].url = "content"
* code ^short.extension[=].extension[=].valueString = "Code"
* code ^definition.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* code ^definition.extension[=].extension[0].url = "lang"
* code ^definition.extension[=].extension[=].valueCode = #de-DE
* code ^definition.extension[=].extension[+].url = "content"
* code ^definition.extension[=].extension[=].valueString = "Ein ICD-10-, Alpha-ID-, SNOMED-, Orpha- oder anderer Code, der die Diagnose identifiziert."
* code ^definition.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* code ^definition.extension[=].extension[0].url = "lang"
* code ^definition.extension[=].extension[=].valueCode = #en-US
* code ^definition.extension[=].extension[+].url = "content"
* code ^definition.extension[=].extension[=].valueString = "An ICD-10-, Alpha-ID-, SNOMED-, Orpha- or other code that identifies the diagnosis."
//Code
* code.coding 1.. MS
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    icd10-gm 0..1 MS and
    alpha-id 0..1 MS and
    sct 0..1 MS and
    orphanet 0..1 MS
* code.coding[icd10-gm] only $CodingICD10GM
* code.coding[icd10-gm] from $icd-10-gm (required)
* code.coding[icd10-gm] ^patternCoding.system = "http://fhir.de/CodeSystem/bfarm/icd-10-gm"
* code.coding[icd10-gm].system MS
* code.coding[icd10-gm].version MS
* code.coding[icd10-gm].code MS
* code.coding[alpha-id] only $CodingAlphaID
* code.coding[alpha-id] from $alpha-id (required)
* code.coding[alpha-id] ^patternCoding.system = "http://fhir.de/CodeSystem/bfarm/alpha-id"
* code.coding[alpha-id].system MS
* code.coding[alpha-id].code MS
// TODO Anlegen eines ValueSets mit Acribis-Diagnosen mit Codierung in SNOMED CT --> Ansatz in https://tmfev.sharepoint.com/:x:/r/sites/tmf/mi-i/_layouts/15/Doc.aspx?sourcedoc=%7B469E89BF-A8CB-442A-B89B-061F2314C270%7D&file=2024_04_03_ACRIBiS_KardioVaskularDS_Allgemein_V2.0.xlsx&action=default&mobileredirect=true
* code.coding[sct] from $diagnoses-sct (required)
* code.coding[sct] ^patternCoding.system = "http://snomed.info/sct"
* code.coding[sct].system 1.. MS
* code.coding[sct].version MS
* code.coding[sct].code 1.. MS
* code.coding[orphanet] from $mii-vs-diagnose-orphanet (required)
* code.coding[orphanet] ^patternCoding.system = "http://www.orpha.net"
* code.coding[orphanet].system 1.. MS
* code.coding[orphanet].code 1.. MS

// Value[x] --> Codeable Concept --> ja/nein/unbekannt/nicht erhoben
* value[x].coding only $mii-diagnose-vorhanden
* value[x].coding from $mii-diagnose-vorhanden (required)

// TODO / To Discuss Component für ONSET-Date mit Code und Date-Value