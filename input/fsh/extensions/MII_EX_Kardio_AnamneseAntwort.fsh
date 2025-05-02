Extension: MII_EX_Kardio_AnamneseAntwort
Id: mii-ex-kardio-anamneseantwort
Title: "Extension - AnamneseAntwort"
Description: "Antworten zu Anamnesefragen aus ärztlicher Befragung oder Patientenfragebogen im Kontext des Projekts ACRIBiS."

//* extension contains AnamneseAntwort 1..1 
* . ^isModifierReason = "Can contradict the presence of a diagnosis by stating the given diagnosis is unknown or asked-unknown or similar."

* value[x] only CodeableConcept
* value[x] from $v2-0532 //(exactly)