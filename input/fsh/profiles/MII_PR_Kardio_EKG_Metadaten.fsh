Profile: MII_PR_Kardio_EKG_Metadaten
Id: mii-pr-kardio-ekg-metadaten
Parent: Observation
Title: "MII PR Kardio EKG Metadaten"
Description: "Profil zur Erfassung der Metadaten eines EKG inkl. Link/Referenz auf den Speicherort."

* insert PR_CS_VS_Version
* insert Publisher

* ^status = #draft
* ^experimental = true
* ^date = "2025-06-18"

* status MS

* code from $devicemetric-type (required)
* code = $mdc#666752
* code.coding 1.. MS
* code.coding.system 1.. MS
* code.coding.code 1.. MS

* subject 1..1 MS
* subject only Reference(Patient)

* effective[x] 1.. MS
* effective[x] only dateTime

* value[x] ..0

* device 1.. MS
* device only Reference(Device)

* referenceRange ..0

// Referenz auf noch anzulegende EKG Procedure

// Link auf EKG in bspw. XNAT/PACS

// Ausgewählte Metadatenfelder aus DICOM