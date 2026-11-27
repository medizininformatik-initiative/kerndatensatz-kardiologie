ValueSet: MII_VS_Kardio_EKG_Annotation_SNOMEDCT
Id: mii-vs-kardio-ekg-annotation-snomedct
Title: "MII VS Kardio EKG Annotation [SNOMED CT]"
Description: "SNOMED CT Codes (Observable entity) zur zusätzlichen Codierung von EKG-Annotationen, z.B. 251208001 |QRS complex duration|."

* insert PR_CS_VS_Version
* insert Publisher

* ^language = #de
* ^status = #draft
* ^experimental = true
* ^date = "2026-11-06"

* include codes from system $sct where concept is-a #363787002 // Observable entity (observable entity)
