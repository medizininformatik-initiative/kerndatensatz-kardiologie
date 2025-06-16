Profile: MII_PR_Kardio_EKG_Metadaten
Id: mii-pr-kardio-ekg-metadaten
Parent: Observation //Procedure //Observation
Title: "MII PR Kardio EKG Metadaten"
Description: "Profil zur Erfassung der Metadaten eines EKG inkl. Link/Referenz auf den Speicherort."
* insert PR_CS_VS_Version
* insert Publisher

//* code = SNOMED TODO

* subject 1..1 MS
* subject only Reference(Patient)

//* focalDevice 1..* MS

// Referenz auf noch anzulegende EKG Procedure

// Link auf EKG in bspw. XNAT/PACS

// TODO

// Ausgewählte Metadatenfelder aus DICOM