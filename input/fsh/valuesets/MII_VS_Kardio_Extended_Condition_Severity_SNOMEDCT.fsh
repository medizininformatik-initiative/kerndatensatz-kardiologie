ValueSet: MII_VS_Kardio_Extended_Condition_Severity_SNOMEDCT
Id: mii-vs-kardio-extended-condition-severity-snomedct
Title: "MII VS Kardio Extended Condition Severity [SNOMED CT]"
Description: "An extended ValueSet including standard condition severity and SNOMED CT code 42796001 (End-stage)"

* insert PR_CS_VS_Version
* insert Publisher

* ^status = #active
* ^experimental = false

* $sct#24484000 // Severe (severity modifier) (qualifier value)
* $sct#6736007 // Moderate (severity modifier) (qualifier value)
* $sct#255604002 // Mild (qualifier value)
* $sct#42796001 //  End-stage (qualifier value)
* $sct#261665006 // Unknown (qualifier value)