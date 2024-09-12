// Diskutieren, ob genau das ValueSet aus einem der Risk-Scores abgebildet werden muss 
// oder ob existierendes Element  address.country ausreicht, um daraus auf die Region zu schließen.

// Ich bin der Meinung, dass das hier weg kann. Ich habe es aber mal als Fingerübung und als Diskussionsgrundlage erzeugt.

// □ Netherlands □ Deutschland (Westeuropa) □ Westeuropa □ North America □ ein anderer Ort verschieden zu den genannten Orten 

Extension: RegionExtension
Id: region-extension
Title: "Region (Wohnort/Land) nach best. HF-Risk-Score"
Description: "Angabe einer Region mit einem ValueSet definiert in ACRIBiS-Datensatz."
* valueString 1..1