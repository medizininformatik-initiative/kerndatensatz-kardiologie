# TODO - Ballot

## TODOs

### Missing Snapshot Error bei ISiK-Dependency/Parent

- [ISiK Lebenszustand](https://simplifier.net/isik-stufe-5/ISiKLebensZustand/~json) Snapshot Error lösen --> [Nachfrage in german/isik in chat.fhir.org](https://chat.fhir.org/#narrow/channel/287581-german.2Fisik/topic/Fehlende.20Snapshots.20bei.20ISiK.20Profilen.3F.20.28FSH.2C.20SUSHI.29/with/617852402)
  - Profil nachbauen und ISiK nicht als Dependency angeben?
  - Auf Fix durch gematik warten oder hl7 fhir / build.fhir.org/ig-Verantwortliche anschreiben, ob die im Build-Prozess einrichten, dass packages zu inflaten?

## Menue

Home: index.html                                                > ++    | Initiale Version steht

Modul:

    Beschreibung des Moduls: module-description.html            > o     | Aufschlag steht; Kardio-Beschreibung aus Infomodell oder Simplifier wiederverwenden

    Kontext und Bezüge: context.html                            > o     | Aufschlag steht; Inhaltlich prüfen und sinnvoll anpassen/ergänzen

    Referenzen: references.html                                 > o     | Aufschlag steht; Evtl. passendere/einheitliche Links einbinden

    Release Notes: release-notes.html                           > +     | Aufschlag steht; Im Hinblick auf Change Notes für 2026.0.0-ballot bearbeiten

Anwendungsfälle:

    Anwendungsszenarien: scenarios.html                         > -     | TODO

    Datensätze: datasets.html                                   > -     | TODO

    Informationsmodell (UML): information-model.html            > +     | Aufschlag steht

Technische Umsetzung:

    FHIR-Profile: profiles-overview.html                        > -     | IG bauen um automatisierte, tabellarische Auflistung via Liquid-Logic zu testen

    Anamnese: profiles-anamnese.html                            > o     | Strukturaufschlag steht

    Diagnostik: profiles-diagnostik.html                        > -     | Strukturaufschlag steht

    Skalen: profiles-skalen.html                                > -     | Strukturaufschlag steht

    Risikofaktoren: profiles-risikofaktoren.html                > -     | Strukturaufschlag steht

    KardioDevices: profiles-kardiodevices.html                  > -     | Strukturaufschlag steht

    EKG-Metadaten: profiles-ekg.html                            > -     | Strukturaufschlag steht

    Terminologien: terminology.html                             > -     | TODO; Terminologieübersicht ala https://simplifier.net/guide/isik-vitalparameter-stufe-5/Einfuehrung/Artefakte/Terminologien?version=5.1.2 --> sinnvolle Umsetzung ohne Simplifier Methoden?

Artifacts: artifacts.html                                       > ++    | Automatische Generierung? --> Übersicht alle Profile + mehr

## Umsetzung des IG Kardio orientiert an PRO (non-Simplifier-IG)
