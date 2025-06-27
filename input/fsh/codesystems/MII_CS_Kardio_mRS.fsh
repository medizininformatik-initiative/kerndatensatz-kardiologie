CodeSystem: MII_CS_Kardio_modifizierte_Rankin_Skala
Id: mii-cs-kardio-modifizierte-rankin-skala
Title: "CodeSystem - modifizierte Rankin-Skala"
Description: "Beeinträchtigung des Patienten nach Schlaganfall"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mRS"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft
* ^experimental = false
* ^date = "2025-04-29"
* ^purpose = "Dieses Code-System bildet die Stufen der modifizierten Rankin-Skala ab."
* ^caseSensitive = true
* ^valueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mRS"
* ^content = #complete

// TODO Recherche, ob es die Codes zum mRS schon in LOINC/SNOMED oder FHIR CS gibt.
// TODO: Ordinal Value vergeben zum Sortieren

* #mRS0 "Es bestehen keine Symptome."
* #mRS1 "Es bestehen keine relevanten Beeinträchtigungen. Der Patient ist in der Lage, seinen Alltag selbstständig zu gestalten."
* #mRS2 "Es bestehen leichte Beeinträchtigungen. Der Patient hat Einschränkungen im Alltag, ist aber nicht auf Hilfe angewiesen."
* #mRS3 "Es bestehen mittelgradige Beeinträchtigungen. Der Patient ist auf Hilfe im Alltag angewiesen. Gehen ist ohne fremde Hilfe (ggf. mit Hilfsmitteln) möglich."
* #mRS4 "Es besteht eine höhergradige Beeinträchtigung. Der Patient ist nicht mehr in der Lage, seinen Körper zu pflegen oder selbstständig zu laufen."
* #mRS5 "Es besteht eine schwere Behinderung. Der Patient ist bettlägerig, inkontinent und auf ständige Pflege angewiesen."
* #mRS6 "Tod infolge des Schlaganfalls"
* #mRSbigger3 "Die Einstufung auf der mRS-Skala liegt bei mehr als 3 (Patient kann nicht ohne fremde Hilfe gehen)"
* #mRSsmallerequal3 "Die Einstufung auf der mRS-Skala liegt bei gleich 3 oder weniger als 3 (Patient kann ohne fremde Hilfe gehen (ggf. mit Hilfsmitteln))"