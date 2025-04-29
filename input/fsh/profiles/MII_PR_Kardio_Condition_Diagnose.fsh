Profile: MII_PR_Kardio_Condition_Diagnose
Id: mii-pr-kardio-condition-diagnose
Parent: MII_PR_Diagnose_Condition

Title: "MII PR Kardio Diagnose"
Description: "Profil zur Abbildung einer Diagnose im Kontext des Projekts Acribis."

* asserter 1..1 MS

// TODO aus vorheriger Condition_Observation:
// TODO Anlegen eines ValueSets mit Acribis-Diagnosen mit Codierung in ICD 10 GM
// Abstimmung in Acribis WP2 für Diskussion/Expertise durch Kliniker und Vorbereitung einer Liste für technische Implementation.
// Vorarbeiten wohl aus Wuerzburg -> siehe Acribis WP6 und Feasibility R-script: https://github.com/guenther-k/ACRIBiS_feasibility/blob/main/ACRIBiS_Feasibility_Script.R
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
//* value[x] only CodeableConcept
//* valueCodeableConcept.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0532" (exactly)
//* valueCodeableConcept.coding from $mii-diagnose-vorhanden (required)

// TODO / To Discuss Component für ONSET-Date mit Code und Date-Value

// GECCO-Diagnose (Condition): https://simplifier.net/guide/GermanCoronaConsensusDataSet-ImplementationGuide/Home/GECCOCore/AnamnesisRiskfactors/Disordersofcardiovascularsystem.guide.md?version=current

// Informationsmodell-TMF-SP: https://tmfev.sharepoint.com/:f:/r/sites/tmf/mi-i/Taskforce%20Kerndatensatz/04_Erweiterungsmodule/Modul_Kardiologie/03%20Datensatz?csf=1&web=1&e=QhP691

//Vererbung siehe:
// https://simplifier.net/MII-Basismodul-Diagnose-2024/MII_PR_Diagnose_Condition/~overview (MII KDS Diagnose (Condition))
// > fhir install de.medizininformatikinitiative.kerndatensatz.diagnose 2024.0.0
// https://simplifier.net/packages/hl7.fhir.r4.core/4.0.1/files/82200 (FHIR Core R4 Condition)
// https://simplifier.net/packages/hl7.fhir.r4.core/4.0.1/files/83132 (FHIR Core R4 Observation)