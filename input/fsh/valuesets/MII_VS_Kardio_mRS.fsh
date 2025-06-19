ValueSet: MII_VS_Kardio_mRS_Stufen
Id: mii-vs-kardio-mrs-stufen
Title: "MII_VS_Kardio_mRS_Stufen"
Description: "Stufen der modifizierten Rankin-Skala"

* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-mrs-stufen"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft
* ^experimental = true
* ^date = "2025-04-29"
//* ^purpose = "."
* ^copyright = "Public Domain"

// erweiterte mRS-scale
* $mRS#mRS0 "Es bestehen keine Symptome."
* $mRS#mRS1 "Es bestehen keine relevanten Beeinträchtigungen. Der Patient ist in der Lage, seinen Alltag selbstständig zu gestalten."
* $mRS#mRS2 "Es bestehen leichte Beeinträchtigungen. Der Patient hat Einschränkungen im Alltag, ist aber nicht auf Hilfe angewiesen."
* $mRS#mRS3 "Es bestehen mittelgradige Beeinträchtigungen. Der Patient ist auf Hilfe im Alltag angewiesen. Gehen ist ohne fremde Hilfe (ggf. mit Hilfsmitteln) möglich."
* $mRS#mRS4 "Es besteht eine höhergradige Beeinträchtigung. Der Patient ist nicht mehr in der Lage, seinen Körper zu pflegen oder selbstständig zu laufen."
* $mRS#mRS5 "Es besteht eine schwere Behinderung. Der Patient ist bettlägerig, inkontinent und auf ständige Pflege angewiesen."
* $mRS#mRS6 "Tod infolge des Schlaganfalls"
* $mRS#mRSbigger3 "Die Einstufung auf der mRS-Skala liegt bei mehr als 3 (Patient kann nicht ohne fremde Hilfe gehen)."
* $mRS#mRSsmallerequal3 "Die Einstufung auf der mRS-Skala liegt bei gleich 3 oder weniger als 3 (Patient kann ohne fremde Hilfe gehen (ggf. mit Hilfsmitteln))"
// Published: 1988, Van Swieten JC; Koudstaal PJ; Visser MC; Schouten HJA; Van Gijn J, 
// Online: see https://pubmed.ncbi.nlm.nih.gov/3363593/
// Lizenzbedingungen: Public Domain --> https://eprovide.mapi-trust.org/instruments/modified-rankin-scale