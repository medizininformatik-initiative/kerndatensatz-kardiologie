# TODO - Ballot

## TODO

### Missing Snapshot Error bei ISiK-Dependency/Parent

- [ISiK Lebenszustand](https://simplifier.net/isik-stufe-5/ISiKLebensZustand/~json) Snapshot Error lösen --> [Nachfrage in german/isik in chat.fhir.org](https://chat.fhir.org/#narrow/channel/287581-german.2Fisik/topic/Fehlende.20Snapshots.20bei.20ISiK.20Profilen.3F.20.28FSH.2C.20SUSHI.29/with/617852402)
  - Profil nachbauen und ISiK nicht als Dependency angeben?
  - Auf Fix durch gematik warten oder hl7 fhir / build.fhir.org/ig-Verantwortliche anschreiben, ob die im Build-Prozess einrichten, dass packages zu inflaten?

## Menue

Home: index.html                                                > ++    | Initiale Version steht

Modul:

    Beschreibung des Moduls: module-description.html            > -     | TODO; Kardio-Beschreibung aus Infomodell oder Simplifier wiederverwenden

    Kontext und Bezüge: context.html                            > o     | Aufschlag steht; Inhaltlich prüfen und sinnvoll anpassen/ergänzen

    Referenzen: references.html                                 > o     | Aufschlag steht; Evtl. passendere/einheitliche Links einbinden

    Release Notes: release-notes.html                           > +     | Aufschlag steht; Im Hinblick auf Change Notes für 2026.0.0-ballot bearbeiten

Anwendungsfälle:

    Anwendungsszenarien: scenarios.html                         > -     | TODO

    Datensätze: datasets.html                                   > -     | TODO

    Informationsmodell (UML): information-model.html            > -     | TODO

Technische Umsetzung:

    FHIR-Profile: profiles-overview.html                        > -     | TODO

    Anamnese: profiles-anamnese.html                            > -     | TODO

    Diagnostik: profiles-diagnostik.html                        > -     | TODO

    Skalen: profiles-skalen.html                                > -     | TODO

    Risikofaktoren: profiles-risikofaktoren.html                > -     | TODO

    KardioDevices: profiles-kardiodevices.html                  > -     | TODO

    EKG-Metadaten: profiles-ekg.html                            > -     | TODO

    Terminologien: terminology.html                             > -     | TODO; Terminologieübersicht ala https://simplifier.net/guide/isik-vitalparameter-stufe-5/Einfuehrung/Artefakte/Terminologien?version=5.1.2 --> sinnvolle Umsetzung ohne Simplifier Methoden?

    CapabilityStatement: capability.html                        > -     | TODO; Verpflichtende Capabilites basieren auf Abstimmung mit FDPG, korrekt?

Artifacts: artifacts.html                                       > ++    | Automatische Generierung? --> Übersicht alle Profile + mehr
    --> Profile?
    --> Terminologien?
    --> CapabilityStatement(s)?

## Umsetzung des IG Kardio orientiert an PRO (non-Simplifier-IG)

## Materialien PROMS

- Remder-Ansicht (build.fhir.org): https://build.fhir.org/ig/medizininformatik-initiative/kerndatensatzmodul-proms/branches/v2026.4.0/de/
- Github-Pagecontent: https://github.com/medizininformatik-initiative/kerndatensatzmodul-proms/tree/dev/input/pagecontent

## Hilfe HL7

- IG Guidance (inkl. Liquid/Jekyll-Shortcuts): https://build.fhir.org/ig/FHIR/ig-guidance/sql.html or https://build.fhir.org/ig/FHIR/ig-guidance/jsonxml.html

## Hilfen MII

- Vereinheitlichter MII-Build wird anscheinend hier vorbereitet: https://github.com/forschungsgruppe-digital-health/mii-kds-studie-ig-inoffiziell
