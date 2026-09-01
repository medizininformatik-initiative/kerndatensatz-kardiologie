# MII CS Kardio Modifizierte Rankin Skala - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CS Kardio Modifizierte Rankin Skala**

## CodeSystem: MII CS Kardio Modifizierte Rankin Skala 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-modifizierte-rankin-skala | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2025-04-29 | *Maschinenlesbarer Name*:MII_CS_Kardio_Modifizierte_Rankin_Skala |

 
Beeinträchtigung des Patienten nach Schlaganfall 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [MII VS Kardio Modifizierte Rankin Skala](ValueSet-mii-vs-kardio-modifizierte-rankin-skala.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-kardio-modifizierte-rankin-skala",
  "language" : "de",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-modifizierte-rankin-skala",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_CS_Kardio_Modifizierte_Rankin_Skala",
  "title" : "MII CS Kardio Modifizierte Rankin Skala",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-04-29",
  "publisher" : "Medizininformatik-Initiative",
  "contact" : [{
    "name" : "Medizininformatik-Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de"
    },
    {
      "system" : "email",
      "value" : "office@medizininformatik-initiative.de"
    }]
  }],
  "description" : "Beeinträchtigung des Patienten nach Schlaganfall",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "purpose" : "Dieses Code-System bildet die Stufen der modifizierten Rankin-Skala ab.",
  "caseSensitive" : true,
  "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-modifizierte-rankin-skala",
  "content" : "complete",
  "count" : 10,
  "concept" : [{
    "code" : "mRS0",
    "display" : "Es bestehen keine Symptome."
  },
  {
    "code" : "mRS1",
    "display" : "Es bestehen keine relevanten Beeinträchtigungen. Der Patient ist in der Lage, seinen Alltag selbstständig zu gestalten."
  },
  {
    "code" : "mRS2",
    "display" : "Es bestehen leichte Beeinträchtigungen. Der Patient hat Einschränkungen im Alltag, ist aber nicht auf Hilfe angewiesen."
  },
  {
    "code" : "mRS3",
    "display" : "Es bestehen mittelgradige Beeinträchtigungen. Der Patient ist auf Hilfe im Alltag angewiesen. Gehen ist ohne fremde Hilfe (ggf. mit Hilfsmitteln) möglich."
  },
  {
    "code" : "mRS4",
    "display" : "Es besteht eine höhergradige Beeinträchtigung. Der Patient ist nicht mehr in der Lage, seinen Körper zu pflegen oder selbstständig zu laufen."
  },
  {
    "code" : "mRS5",
    "display" : "Es besteht eine schwere Behinderung. Der Patient ist bettlägerig, inkontinent und auf ständige Pflege angewiesen."
  },
  {
    "code" : "mRS6",
    "display" : "Tod infolge des Schlaganfalls"
  },
  {
    "code" : "mRSbigger3",
    "display" : "Die Einstufung auf der mRS-Skala liegt bei mehr als 3 (Patient kann nicht ohne fremde Hilfe gehen)"
  },
  {
    "code" : "mRSsmallerequal3",
    "display" : "Die Einstufung auf der mRS-Skala liegt bei gleich 3 oder weniger als 3 (Patient kann ohne fremde Hilfe gehen (ggf. mit Hilfsmitteln))"
  },
  {
    "code" : "mRSunknown",
    "display" : "Die Einstufung auf der mRS-Skala ist unbekannt"
  }]
}

```
