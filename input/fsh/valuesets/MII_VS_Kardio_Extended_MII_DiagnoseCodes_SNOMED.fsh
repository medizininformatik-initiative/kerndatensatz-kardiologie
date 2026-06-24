ValueSet: MII_VS_Kardio_Extended_MII_DiagnoseCodes_SNOMED
Id: mii-vs-kardio-extended-mii-diagnosecodes-snomed
Title: "MII VS Kardio Extended MII DiagnoseCodes [SNOMED CT]"
Description: "Erweiterung des MII VS Diagnose Diagnosecodes [SNOMED CT]"

* insert PR_CS_VS_Version
* insert Publisher

* ^status = #active
* ^experimental = false
* ^date = "2026-05-29"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement."
* ^extension[http://hl7.org/fhir/StructureDefinition/valueset-supplement].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-supplement-snomedct"

* include codes from valueset $diagnoses-sct-vs
* include $example-sct#368009:{116676008=49755003,363698007=17401000},{246112005=24484000} // Heart valve disorder:{Associated morphology=Morphologically abnormal structure,Finding site=Cardiac valve structure},{Severity=Severe}