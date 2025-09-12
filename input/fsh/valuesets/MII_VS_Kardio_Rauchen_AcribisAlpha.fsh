ValueSet: MII_VS_Kardio_Rauchen_AcribisAlpha
Id: mii-vs-kardio-rauchen-acribisalpha
Title: "MII VS Kardio Rauchen AcribisAlpha"
Description: "Kombiniertes ValueSet mit Codes zur Abbildung des Rauchverhaltens im Kontext von Acribis"

* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-14"
//* ^version = "1.0"
//* ^purpose = "."
* ^copyright = "© 1995-2025 Regenstrief Institute, Inc. LOINC® is a registered United States trademark of Regenstrief Institute, Inc. This material contains LOINC codes and is subject to the LOINC license. For terms, see https://loinc.org/license/"

// Alle Codes aus dem ISiK-ValueSet
* ^compose.include[0].valueSet = "https://gematik.de/fhir/isik/ValueSet/current-smoking-status-uv-ips"

// Einzelner SNOMED CT Code für 'Smoker (finding)'
* ^compose.include[+].system = "http://snomed.info/sct"
* ^compose.include[=].concept[0].code = #77176002
* ^compose.include[=].concept[0].display = "Smoker (finding)"

// Code	Display
// > https://gematik.de/fhir/isik/ValueSet/current-smoking-status-uv-ips
//  LA18976-3	Current every day smoker
//  LA18977-1	Current some day smoker
//  LA15920-4	Former smoker
//  LA18978-9	Never smoker
//  LA18979-7	Smoker, current status unknown
//  LA18980-5	Unknown if ever smoked
//  LA18981-3	Heavy tobacco smoker
//  LA18982-1	Light tobacco smoker
// > Acribis Zusatzangabe aus SNOMED CT
//  Ja, ich rauche aktuell --> SNOMED 77176002

// Draft eines Mappings auf SNOMED CT: https://hl7.org/fhir/uv/ips/ConceptMap-loinc-smoking-status-to-snomed-ct-uv-ips.html