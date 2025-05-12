Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
//Alias: $vs-mii-icu-code-monitoring-und-vitaldaten-snomed = https://gematik.de/fhir/isik/ValueSet/vs-mii-icu-code-monitoring-und-vitaldaten-snomed
//Alias: $vs-mii-icu-code-monitoring-und-vitaldaten-loinc = https://gematik.de/fhir/isik/ValueSet/vs-mii-icu-code-monitoring-und-vitaldaten-loinc
//Alias: $vs-mii-icu-code-monitoring-und-vitaldaten-iso11073 = https://gematik.de/fhir/isik/ValueSet/vs-mii-icu-code-monitoring-und-vitaldaten-iso11073
//Alias: $vs-mii-icu-bodysite-observation-monitoring-und-vitaldaten = https://gematik.de/fhir/isik/ValueSet/vs-mii-icu-bodysite-observation-monitoring-und-vitaldaten

Profile: MII_PR_Kardio_Observation_Linksventrikulaere_Ejektionsfraktion
Id: mii-pr-kardio-observation-linksventrikulaere-ejektionsfraktion
Parent: Observation // VS zu restriktiv: SD_MII_ICU_Monitoring_Und_Vitaldaten
Title: "MII PR Kardio Observation Linksventrikulaere Ejektionsfraktion"
Description: "Profil zur Angabe eines Untersuchungsergebnisses zur LVEF im Kontext des Projekts Acribis."

// Profil abgeleitet von ICU Vitalparameter (da LVEF kein Vitalzeichen ist, wird von Observation geerbt)
// ICU Vitalparameter "Monitoring und Vitaldaten": "https://simplifier.net/isik-vitalparameter-v4/sd_mii_icu_monitoring_und_vitaldaten
* ^version = "0.1"
* ^experimental = false
* ^date = "2025-05-12"
* insert publisher-rule
* obeys vs-de-2 // If there is no component or hasMember element then either a value[x] or a data absent reason must be present

* identifier MS
* basedOn MS
* basedOn ^short = "bei Übernahme aus ISiK Monitoring und Vitaldaten die category und restriktive valueSets abgeändert."
* partOf only Reference(Procedure) //Procedure Echokradiographie
* status MS
* status ^comment = "Motivation MS: Observation.status ist bereits durch die Kardinalität der Basisklasse Observation erzwungen. Dieses Feld dient der Präzisierung des Status der Untersuchung"

// Category
* category MS
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.ordered = false
* category ^slicing.rules = #open
* category contains 
    vs-cat 1..1 MS
* category[vs-cat] = $observation-category#imaging
* category[vs-cat].coding MS
* category[vs-cat].coding.system 1.. MS
* category[vs-cat].coding.code 1.. MS
* category[vs-cat] ^comment = "Category 'imaging', da meist mittels Echokardiographie oder durch MRT, CT, etc. gemessen."

* code MS
* code obeys code-coding-icu  // code-coding-icu: Es muss mindestens ein snomed oder loinc code vorhanden sein
* code.coding 1..
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    sct 1..* MS and
    loinc 1..* MS and
    IEEE-11073 0..* MS
* code.coding[sct] from $sct (required)
* code.coding[sct].system 1.. MS
* code.coding[sct].code 1.. MS
* code.coding[sct] ^patternCoding.system = $sct
* code.coding[sct] ^patternCoding.code = $sct#250908004
* code.coding[sct] ^patternCoding.display = "Left ventricular ejection fraction (observable entity)"
* code.coding[loinc] from $loinc (required)
* code.coding[loinc].system 1.. MS
* code.coding[loinc].code 1.. MS
* code.coding[loinc] ^patternCoding.system = $loinc
* code.coding[loinc] ^patternCoding.code = $loinc#10230-1
* code.coding[loinc] ^patternCoding.display = "Left ventricular Ejection fraction"
//* code.coding[IEEE-11073] from $vs-mii-icu-code-monitoring-und-vitaldaten-iso11073 (required)
* code.coding[IEEE-11073] ^patternCoding.system = "urn:iso:std:iso:11073:10101"
* code.coding[IEEE-11073].system 1.. MS
* code.coding[IEEE-11073].code 1.. MS

* subject 1.. MS
* subject only Reference(Patient)

* encounter MS

* effective[x] 1.. MS
* effective[x] only dateTime //or Period //Grundsätzlich wäre eine Period als Zeitangabe denkbar - in Acribis ist (evtl. vorläufig) ein fixes Datum einfacher zu händeln

* performer MS
* performer ^comment = "Motivation MS: Dieses Feld stellt eine präzisierende Angaben zum Zweck der Qualitätsbewertung bereit"

* value[x] 1..1 MS
* value[x] only Quantity
* value[x].value 1.. MS
* value[x].unit 1.. MS
* value[x].system 1.. MS
* value[x].code 1.. MS
* valueQuantity MS // TODO learn how patterns work and how the are used
* valueQuantity.unit = "percent" (exactly)
* valueQuantity.system = $ucum (exactly)
* valueQuantity.code = $ucum#% (exactly)

* dataAbsentReason MS
* dataAbsentReason obeys mii-icu-1

// Intepretation - ValueSet für high/low/normal (preferred?) als Referenzbereich
* interpretation MS

* bodySite MS
//* bodySite from $vs-mii-icu-bodysite-observation-monitoring-und-vitaldaten (extensible)

// TODO Methode?? per Loinc, per "method"?
* method MS
* method ^comment = "Motivation MS: Dieses Feld stellt eine präzisierende Angaben zum Zweck der Qualitätsbewertung bereit"

* device MS

// TODO refernzbereichsangaben prüfen
* referenceRange ^slicing.discriminator.type = #pattern
* referenceRange ^slicing.discriminator.path = "$this"
* referenceRange ^slicing.rules = #closed
* referenceRange ^slicing.ordered = true
* referenceRange ^slicing.description = "Referenzbereiche nach ."
* referenceRange MS

// Leitlinie: 2021 ESC Guidelines for the diagnosis and treatment of acute and chronic heart failure (ESC - European Society of Cardiology)
* referenceRange contains
    normal 0..1 and
    borderline 0..1 and
    mild 0..1 and
    reduced 0..1
// Normal >=50. pEF nicht sinnvoll abgrenzbar.
* referenceRange[normal].text = "Normal"
* referenceRange[normal].low.value = 50
* referenceRange[normal].low.unit = "%"
* referenceRange[normal].low.system = $ucum
// HFmrEF
* referenceRange[mild].text = "Mildly reduced"
* referenceRange[mild].high.value = 49
* referenceRange[mild].low.value = 41
* referenceRange[mild].low.unit = "%"
* referenceRange[mild].low.system = $ucum
* referenceRange[mild].high.unit = "%"
* referenceRange[mild].high.system = $ucum
// HFrEF LVEF <=40
* referenceRange[reduced].text = "Reduced"
* referenceRange[reduced].high.value = 40
* referenceRange[reduced].high.unit = "%"
* referenceRange[reduced].high.system = $ucum

Invariant: vs-de-2
Description: "If there is no component or hasMember element then either a value[x] or a data absent reason must be present"
* severity = #error
* expression = "(component.empty() and hasMember.empty()) implies (dataAbsentReason.exists() or value.exists())"

Invariant: code-coding-icu
Description: "Es muss mindestens ein snomed oder loinc code vorhanden sein"
* severity = #error
* expression = "coding.exists() implies coding.where(system = 'http://snomed.info/sct').exists() or coding.where(system = 'http://loinc.org').exists()"

Invariant: mii-icu-1
Description: "If there is no Observation.value, a dataAbsentReason must be given."
* severity = #error
* expression = "value.exists().not() implies dataAbsentReason.exists()"