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

* code from $ekg-metadaten (required)

* subject 1..1 MS
* subject only Reference(Patient or Device)

* effective[x] 1.. MS
* effective[x] only dateTime

* device only Reference(Device)

* derivedFrom 1.. MS
* derivedFrom ^slicing.discriminator.type = #type
* derivedFrom ^slicing.discriminator.path = "$this"
* derivedFrom ^slicing.rules = #open

* derivedFrom contains document 1.. MS
* derivedFrom[document] only Reference(DocumentReference)

Instance: mii-exa-kardio-ekg-metadaten-sample-rate
InstanceOf: MII_PR_Kardio_EKG_Metadaten
Title: "MII EXA Kardio EKG Sample Rate"
Description: "Beispiel einer Observation zur Darstellung der Sample Rate von Kanal I eines aufgezeichneten EKGs"
Usage: #example

* status = #active
* code = $mdc#666753 "MDC_ECG_CTL_VBL_SAMPLE_RATE"
* subject.reference = "Device/mii-exa-kardio-ekg-kanal-i"
* effectiveDateTime = "2025-07-17T16:41:22+02:00"
* valueInteger = 1000
* derivedFrom.type = "DocumentReference"
* derivedFrom.display = "Platzhalter für DocumentReference auf tatsächliche Rohdaten"

// Referenz auf noch anzulegende EKG Procedure

// Link auf EKG in bspw. XNAT/PACS

// Ausgewählte Metadatenfelder aus DICOM