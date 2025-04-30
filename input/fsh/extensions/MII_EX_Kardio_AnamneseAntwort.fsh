Extension: MII_EX_Kardio_AnamneseAntwort
Id: mii-ex-kardio-anamneseantwort

Title: "MII EX Kardio AnamneseAntwort"
Description: "Antworten zu Anamnesefragen aus ärztlicher Befragung oder Patientenfragebogen im Kontext des Projekts ACRIBiS."

* extension contains 
    AnamneseAntwort 1..1 
* extension[AnamneseAntwort].value[x] only CodeableConcept
* extension[AnamneseAntwort].valueCodeableConcept.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0532" (exactly)
//* extension[AnamneseAntwort].valueCodeableConcept.coding = $mii-diagnose-vorhanden // (required)