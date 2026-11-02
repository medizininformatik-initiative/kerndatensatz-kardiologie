Profile: MII_PR_Kardio_Linksventrikulaere_Ejektionsfraktion
Id: mii-pr-kardio-linksventrikulaere-ejektionsfraktion
Parent: Observation // VS zu restriktiv: SD_MII_ICU_Monitoring_Und_Vitaldaten
Title: "MII PR Kardio Linksventrikulaere Ejektionsfraktion"
Description: "Profil zur Angabe eines Untersuchungsergebnisses zur LVEF im Kontext des Projekts Acribis."
* insert PR_CS_VS_Version
* insert Publisher
// Profil abgeleitet von ICU Vitalparameter (da LVEF kein Vitalzeichen ist, wird aber von Observation geerbt)
// ICU Vitalparameter "Monitoring und Vitaldaten": "https://simplifier.net/isik-vitalparameter-v4/sd_mii_icu_monitoring_und_vitaldaten
// bei Übernahme aus ISiK Monitoring und Vitaldaten die category und restriktive valueSets abgeändert.

* ^language = #de
* ^status = #active
* ^experimental = false
* ^date = "2025-12-08"

* obeys mii-inv-kardio-dataabsentreason // Ohne value[x] muss dataAbsentReason angegeben werden

* partOf only Reference(Procedure) //Procedure Echokardiographie
* partOf ^comment = "Angabe einer übergeordnete (Echokardiographie-) Prozedur"

* status ^comment = "Dieses Feld dient der Präzisierung des Status der Untersuchung"

// Category
* category 1.. MS
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains 
    vs-cat 1..1 MS
* category[vs-cat] = $observation-category#imaging
* category[vs-cat] ^comment = "Category 'imaging', da LVEF meist mittels Echokardiographie oder durch MRT, CT, etc. gemessen."

* code 1.. MS
* code.coding 2.. MS
* code.coding.system 1.. MS
* code.coding.version 1.. MS
* code.coding.code 1.. MS
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    sct 1..1 MS and
    loinc 1..1 MS
* code.coding[sct] = $sct#250908004 // Left ventricular ejection fraction (observable entity)
* code.coding[loinc] = $loinc#10230-1 // Left ventricular Ejection fraction

* subject 1.. MS
* subject only Reference(Patient)

* effective[x] 1.. MS
* effective[x] only dateTime or Period or instant

* value[x] MS
* value[x] only Quantity // Es kann sein, dass eine Angabe im Arztbrief bspw. mit Wert "eingeschränkt" o.ä. erfolgt. Das ist derzeit im Profil nicht vorgesehen.
* valueQuantity.value 1.. MS
* valueQuantity.unit 1.. MS
* valueQuantity.system 1.. MS
* valueQuantity.code 1.. MS
// Pattern
* valueQuantity MS
* valueQuantity.unit = "%"
* valueQuantity.system = $ucum
* valueQuantity.code = $ucum#%

//* bodySite from $vs-mii-icu-bodysite-observation-monitoring-und-vitaldaten (extensible)

// Verwendete Berechnungsmethode
* method MS
* method ^comment = "Angabe der für die Ermittlung/Berechnung verwendeten Methode (2D,Simpson,3D,CMR, etc.) als SNOMED CT oder als LOINC-Code."

// Referenzbereich gemäß 2026 ESC Guidelines for the management of heart failure:
// Normalbereich LVEF >= 50 %; Werte < 50 % gelten als reduziert (HFrEF-Grenze), HFmrEF entfällt.
// Die Bewertung des Messwerts erfolgt über interpretation (z. B. N/L), nicht über weitere Referenzbereiche.
* referenceRange 0..1 MS
* referenceRange ^short = "Normalbereich der LVEF (>= 50 %)"
* referenceRange.type 1.. MS
* referenceRange.type = $referencerange-meaning#normal
* referenceRange.low 1.. MS
* referenceRange.low = 50 '%' "%"

// Interpretation des Messwerts in Bezug auf den Normalbereich (Basis-Binding: observation-interpretation, extensible)
* interpretation MS
* interpretation ^comment = "Bewertung des Messwerts in Bezug auf den Normalbereich gemäß ESC-Leitlinie Herzinsuffizienz 2026, z. B. N (Normal, LVEF >= 50 %) oder L (Low, LVEF < 50 %, reduziert)."
