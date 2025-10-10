ValueSet: MII_VS_Kardio_Klappenvitium_SNOMEDCT
Id: mii-vs-kardio-klappenvitium-snomedct
Title: "MII VS Kardio Klappenvitium [SNOMED CT]"
Description: "SNOMED CT Codes für Klappenerkrankungen"

* insert PR_CS_VS_Version
* insert Publisher

* ^status = #active
* ^experimental = true
* ^date = "2025-09-16"
* ^extension[http://hl7.org/fhir/StructureDefinition/valueset-supplement].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-klappenvitium-supplement-snomedct"

* include codes from system $sct-20250701 where concept is-a #368009 // "Heart valve disorder (disorder)"
* $sct-20250701#368009:{116676008=49755003,363698007=17401000} // Heart valve disorder:{Associated morphology=Morphologically abnormal structure,Finding site=Cardiac valve structure}