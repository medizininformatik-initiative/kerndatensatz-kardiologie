# Home - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* **Home**

## Home

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ImplementationGuide/mii-kerndatensatzmodul-kardiologie | *Version*:2027.0.0-ballot.rc1 |
| Draft Stand: 2026-09-01 | *Maschinenlesbarer Name*:MII_IG_MODUL_KARDIO_DE |

# Kerndatensatz-Modul Kardiologie

Die vorliegende Spezifikation beschreibt die FHIR-Repräsentation des Kerndatensatz-Moduls Kardiologie der Medizininformatik-Initiative. Im Folgenden werden die Use Cases des Moduls, sowie die dazugehörigen FHIR-Profile und Terminologie-Ressourcen in ihrer verbindlichen Form beschrieben.

| | |
| :--- | :--- |
| Datum | 2026-09-01T14:44:58+00:00 |
| Version | 2027.0.0-ballot.rc1 |
| Status | draft |
| Realm | DE |

## Fragen / Feedback

Fragen zu der vorliegenden Publikation können jederzeit unter [chat.fhir.org](https://chat.fhir.org) im Stream 'german/mi-initiative' gestellt werden.

Anmerkungen und Kritik werden in Form von 'Issues' im [GitHub-Projekt](https://github.com/medizininformatik-initiative/kerndatensatz-kardiologie/issues) stets gern entgegengenommen.

## Impressum

Dieser Leitfaden ist im Rahmen der Medizininformatik Initiative erstellt worden und unterliegt per Governance-Prozess dem Abstimmungsverfahren des Interoperabilitätsforums und der Technischen Komitees von HL7 Deutschland e. V.

## Ansprechpartner

* Merten Prüser, Uniklinik Heidelberg (UKHD) — Modulsprecher Kardiologie
* Philip Goos, MeDIC Heidelberg (UKHD) — Technische Umsetzung IG
* Jendrik Richter, Universitätsmedizin Göttingen (UMG) — Technische Umsetzung IG
* Alexandra Cieslak, Medizinische Hochschule Hannover (MHH)
* Malik Atamne, MeDIC Münster (UKM)
* Sarah Riepenhausen, MeDIC Münster (UKM)
* Dirk Meyer zum Büschenfelde, Berlin Institute of Health (Charite)
* Karoline Buckow, Technologie- und Methodenplattform für die vernetzte medizinische Forschung e.V. (TMF)
* Franziska Klepka, Technologie- und Methodenplattform für die vernetzte medizinische Forschung e.V. (TMF)

Weiterhin die Mitwirkenden aus den Modulsprecher-Teams der anderen MII-KDS-Module (base, meta, icu, etc.) sowie Fachvertreter aus den Kliniken.

## Autoren (in alphabetischer Reihenfolge)

* Malik Atamne, MeDIC Münster (UKM)
* Alexandra Cieslak, Medizinische Hochschule Hannover (MHH)
* Philip Goos, MeDIC Heidelberg (UKHD)
* Dirk Meyer zum Büschenfelde, Berlin Institute of Health (Charite)
* Merten Prüser, Uniklinik Heidelberg (UKHD)
* Jendrik Richter, Universitätsmedizin Göttingen (UMG)

## Copyright-Hinweis, Nutzungshinweise

Copyright © 2025+: Medizininformatik Initiative

Der Inhalt dieser Spezifikation ist öffentlich. Die Nachnutzungs- bzw. Veröffentlichungsansprüche sind nicht beschränkt.

Zu den Nutzungsrechten der zugrunde liegenden FHIR-Technologie siehe die FHIR-Basis-Spezifikation.

Einige verwendete Codesysteme werden von anderen Organisationen herausgegeben und gepflegt. Es gilt das Copyright der dort jeweils aufgeführten Herausgeber (Publisher).

## Disclaimer

Der Inhalt dieses Dokuments ist öffentlich. Zu beachten ist, dass Teile dieses Dokuments auf FHIR Version R4 beruhen, für die Copyright HL7 International gilt.

This is an R4 IG. None of the features it uses are changed in R4B, so it can be used as is with R4B systems. Packages for both [R4 (mii-kerndatensatzmodul-kardiologie.r4)](../package.r4.tgz) and [R4B (mii-kerndatensatzmodul-kardiologie.r4b)](../package.r4b.tgz) are available.

This publication includes IP covered under the following statements.

* BfArM 1994 - 2024 - Die Erstellung erfolgt unter Verwendung der maschinenlesbaren Fassung des Bundesinstituts für Arzneimittel und Medizinprodukte (BfArM)

* [Alpha-ID](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.base@2026.0.1&canonical=http://fhir.de/CodeSystem/bfarm/alpha-id): [MII_PR_Kardio_Diagnose](StructureDefinition-mii-pr-kardio-diagnose.md), [MII_PR_Kardio_Diagnose_Prozedur_Nein_Unbekannt](StructureDefinition-mii-pr-kardio-diagnose-prozedur-nein-unbekannt.md), [MII_PR_Kardio_Klappenvitium](StructureDefinition-mii-pr-kardio-klappenvitium.md) and [MII_VS_Kardio_Klappenvitium_ALPHAID](ValueSet-mii-vs-kardio-klappenvitium-alphaid.md)
* [OPS](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.base@2026.0.1&canonical=http://fhir.de/CodeSystem/bfarm/ops): [MII_PR_Kardio_EKG_Durchfuehrung](StructureDefinition-mii-pr-kardio-ekg-durchfuehrung.md), [MII_PR_Kardio_Kardiale_Deviceimplantation](StructureDefinition-mii-pr-kardio-kardiale-deviceimplantation.md) and [MII_VS_Kardio_Kardiale_Deviceimplantation_OPS](ValueSet-mii-vs-kardio-kardiale-deviceimplantation-ops.md)


* IEEE maintains copyright on all content from IEEE 11073 standards. All rights reserved. Implementers should obtain official copies of all applicable standards documents directly from IEEE. The inclusion of IEEE 11073 terminology codes and definitions in HL7 messages and related implementation guides is permitted under existing agreements. For permission regarding any other usage, please contact IEEE at copyrights@ieee.org.

* [ISO/IEEE 11073 Medical Device Communication Nomenclature](http://terminology.hl7.org/6.5.0/CodeSystem-v3-mdc.html): [Device/mii-exa-kardio-ekg-geraet-mortara](Device-mii-exa-kardio-ekg-geraet-mortara.md), [Device/mii-exa-kardio-ekg-kanal-i](Device-mii-exa-kardio-ekg-kanal-i.md)... Show 14 more, [Device/mii-exa-kardio-ekg-kanal-ii](Device-mii-exa-kardio-ekg-kanal-ii.md), [Device/mii-exa-kardio-ekg-kanal-iii](Device-mii-exa-kardio-ekg-kanal-iii.md), [DeviceMetric/mii-exa-kardio-nbg-schrittmachermodus](DeviceMetric-mii-exa-kardio-nbg-schrittmachermodus.md), [MII_PR_Kardio_EKG_Annotation](StructureDefinition-mii-pr-kardio-ekg-annotation.md), [MII_PR_Kardio_EKG_Geraet](StructureDefinition-mii-pr-kardio-ekg-geraet.md), [MII_PR_Kardio_EKG_Kanal](StructureDefinition-mii-pr-kardio-ekg-kanal.md), [MII_PR_Kardio_Geraeteprogrammierung](StructureDefinition-mii-pr-kardio-geraeteprogrammierung.md), [MII_PR_Kardio_NBG_Schrittmachermodus](StructureDefinition-mii-pr-kardio-nbg-schrittmachermodus.md), [MII_VS_Kardio_EKG_Kanaele_MDC](ValueSet-mii-vs-kardio-ekg-kanaele-mdc.md), [MII_VS_Kardio_Geraeteprogrammierung_MDC](ValueSet-mii-vs-kardio-geraeteprogrammierung-mdc.md), [MII_VS_Kardio_Metriken_EKG_Annotationen_MDC](ValueSet-mii-vs-kardio-metriken-ekg-annotationen-mdc.md), [MII_VS_Kardio_Objekte_Geraete_MDC](ValueSet-mii-vs-kardio-objekte-geraete-mdc.md), [Observation/mii-exa-kardio-ekg-rr-interval](Observation-mii-exa-kardio-ekg-rr-interval.md) and [Observation/mii-exa-kardio-geraeteprogrammierung-vvi](Observation-mii-exa-kardio-geraeteprogrammierung-vvi.md)


* The UCUM codes, UCUM table (regardless of format), and UCUM Specification are copyright 1999-2009, Regenstrief Institute, Inc. and the Unified Codes for Units of Measures (UCUM) Organization. All rights reserved. [https://ucum.org/trac/wiki/TermsOfUse](https://ucum.org/trac/wiki/TermsOfUse)

* [Unified Code for Units of Measure (UCUM)](http://hl7.org/fhir/uv/xver-r5.r4/0.1.0/CodeSystem-v3-ucum.html): [DeviceDefinition/mii-exa-kardio-ekg-geraetedefinition-mortara](DeviceDefinition-mii-exa-kardio-ekg-geraetedefinition-mortara.md), [Observation/mii-exa-kardio-ekg-rr-interval](Observation-mii-exa-kardio-ekg-rr-interval.md), [Observation/mii-exa-kardio-lvef](Observation-mii-exa-kardio-lvef.md) and [Observation/mii-exa-kardio-raucherstatus](Observation-mii-exa-kardio-raucherstatus.md)


* This material contains content from [LOINC](http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the [license](http://loinc.org/license). LOINC® is a registered United States trademark of Regenstrief Institute, Inc.

* [LOINC](http://terminology.hl7.org/6.5.0/CodeSystem-v3-loinc.html): [DocumentReference/mii-exa-kardio-ekg-referenz](DocumentReference-mii-exa-kardio-ekg-referenz.md), [MII_PR_Kardio_EKG_Referenz](StructureDefinition-mii-pr-kardio-ekg-referenz.md)... Show 8 more, [MII_PR_Kardio_Linksventrikulaere_Ejektionsfraktion](StructureDefinition-mii-pr-kardio-linksventrikulaere-ejektionsfraktion.md), [MII_PR_Kardio_Observation_Rauchen](StructureDefinition-mii-pr-kardio-observation-rauchen.md), [MII_PR_Kardio_Score_Modifizierte_Rankin_Skala](StructureDefinition-mii-pr-kardio-score-modifizierte-rankin-skala.md), [MII_PR_Kardio_Score_NYHA](StructureDefinition-mii-pr-kardio-score-nyha.md), [Observation/mii-exa-kardio-lvef](Observation-mii-exa-kardio-lvef.md), [Observation/mii-exa-kardio-mrs](Observation-mii-exa-kardio-mrs.md), [Observation/mii-exa-kardio-raucherstatus](Observation-mii-exa-kardio-raucherstatus.md) and [Observation/mii-exa-kardio-score-nyha-ii](Observation-mii-exa-kardio-score-nyha-ii.md)


* This material contains content that is copyright of SNOMED International. Implementers of these specifications must have the appropriate SNOMED CT Affiliate license - for more information contact [https://www.snomed.org/get-snomed](https://www.snomed.org/get-snomed) or [info@snomed.org](mailto:info@snomed.org).

* [SNOMED Clinical Terms&reg; (SNOMED CT&reg;)](http://hl7.org/fhir/R4/codesystem-snomedct.html): [Condition/mii-exa-kardio-diagnose-myokardinfarkt](Condition-mii-exa-kardio-diagnose-myokardinfarkt.md), [Condition/mii-exa-kardio-hoehergradiges-vitium](Condition-mii-exa-kardio-hoehergradiges-vitium.md)... Show 45 more, [Device/mii-exa-kardio-device-icd](Device-mii-exa-kardio-device-icd.md), [MII_PR_Kardio_Anzahl_KH_Aufenthalte_wg_HF](StructureDefinition-mii-pr-kardio-anzahl-kh-aufenthalte-wg-hf.md), [MII_PR_Kardio_Atherosklerotisches_Erstereignis](StructureDefinition-mii-pr-kardio-atherosklerotisches-erstereignis.md), [MII_PR_Kardio_Device](StructureDefinition-mii-pr-kardio-device.md), [MII_PR_Kardio_Diagnose](StructureDefinition-mii-pr-kardio-diagnose.md), [MII_PR_Kardio_Diagnose_Prozedur_Nein_Unbekannt](StructureDefinition-mii-pr-kardio-diagnose-prozedur-nein-unbekannt.md), [MII_PR_Kardio_EKG_Durchfuehrung](StructureDefinition-mii-pr-kardio-ekg-durchfuehrung.md), [MII_PR_Kardio_Kardiale_Deviceimplantation](StructureDefinition-mii-pr-kardio-kardiale-deviceimplantation.md), [MII_PR_Kardio_Klappenvitium](StructureDefinition-mii-pr-kardio-klappenvitium.md), [MII_PR_Kardio_Linksventrikulaere_Ejektionsfraktion](StructureDefinition-mii-pr-kardio-linksventrikulaere-ejektionsfraktion.md), [MII_PR_Kardio_Observation_Rauchen](StructureDefinition-mii-pr-kardio-observation-rauchen.md), [MII_PR_Kardio_Score_Modifizierte_Rankin_Skala](StructureDefinition-mii-pr-kardio-score-modifizierte-rankin-skala.md), [MII_PR_Kardio_Score_NYHA](StructureDefinition-mii-pr-kardio-score-nyha.md), [MII_QN_Kardio_Acribis_Study_FollowUp](Questionnaire-mii-qn-kardio-acribis-study-followup.md), [MII_VS_Kardio_Allergene_SNOMEDCT](ValueSet-mii-vs-kardio-allergene-snomedct.md), [MII_VS_Kardio_Atherosklerotisches_Ereignis_SNOEMDCT](ValueSet-mii-vs-kardio-atherosklerotisches-ereignis-snomedct.md), [MII_VS_Kardio_EKG_Prozedur_SNOMEDCT](ValueSet-mii-vs-kardio-ekg-prozedur-snomedct.md), [MII_VS_Kardio_Ethnie_SNOMEDCT](ValueSet-mii-vs-kardio-ethnie-snomedct.md), [MII_VS_Kardio_Extended_Condition_Severity_SNOMEDCT](ValueSet-mii-vs-kardio-extended-condition-severity-snomedct.md), [MII_VS_Kardio_Extended_MII_DiagnoseCodes_SNOMED](ValueSet-mii-vs-kardio-extended-mii-diagnosecodes-snomed.md), [MII_VS_Kardio_Geraetetyp_SNOMEDCT](ValueSet-mii-vs-kardio-geraetetyp-snomedct.md), [MII_VS_Kardio_Gewichtsveraenderung_SNOMEDCT](ValueSet-mii-vs-kardio-gewichtsveraenderung-snomedct.md), [MII_VS_Kardio_Kardiale_Deviceimplantation_Koerperstelle_SNOMEDCT](ValueSet-mii-vs-kardio-kardiale-deviceimplantation-koerperstelle-snomedct.md), [MII_VS_Kardio_Kardiale_Deviceimplantation_SNOMEDCT](ValueSet-mii-vs-kardio-kardiale-deviceimplantation-scnomedct.md), [MII_VS_Kardio_Klappenvitium_Grad_SNOMEDCT](ValueSet-mii-vs-kardio-klappenvitium-grad-snomedct.md), [MII_VS_Kardio_Klappenvitium_SNOMEDCT](ValueSet-mii-vs-kardio-klappenvitium-snomedct.md), [MII_VS_Kardio_NYHA_Klassen_SNOMEDCT](ValueSet-mii-vs-kardio-nyha-klassen-snomedct.md), [Observation/mii-exa-kardio-anzahl-kh-aufenthalte-wg-hf](Observation-mii-exa-kardio-anzahl-kh-aufenthalte-wg-hf.md), [Observation/mii-exa-kardio-anzahl-kh-aufenthalte-wg-hf2](Observation-mii-exa-kardio-anzahl-kh-aufenthalte-wg-hf2.md), [Observation/mii-exa-kardio-atherosklerotisches-erstereignis](Observation-mii-exa-kardio-atherosklerotisches-erstereignis.md), [Observation/mii-exa-kardio-herzinsuffizienz-unbekannt](Observation-mii-exa-kardio-herzinsuffizienz-unbekannt.md), [Observation/mii-exa-kardio-hoehergradiges-vitium-nein](Observation-mii-exa-kardio-hoehergradiges-vitium-nein.md), [Observation/mii-exa-kardio-kein-device](Observation-mii-exa-kardio-kein-device.md), [Observation/mii-exa-kardio-lvef](Observation-mii-exa-kardio-lvef.md), [Observation/mii-exa-kardio-mrs](Observation-mii-exa-kardio-mrs.md), [Observation/mii-exa-kardio-pci-nein](Observation-mii-exa-kardio-pci-nein.md), [Observation/mii-exa-kardio-raucherstatus](Observation-mii-exa-kardio-raucherstatus.md), [Observation/mii-exa-kardio-score-nyha-ii](Observation-mii-exa-kardio-score-nyha-ii.md), [PractitionerRole/mii-exa-kardio-rolle-kardiologe](PractitionerRole-mii-exa-kardio-rolle-kardiologe.md), [Procedure/mii-exa-kardio-ekg-durchfuehrung](Procedure-mii-exa-kardio-ekg-durchfuehrung.md), [Procedure/mii-exa-kardio-kardiale-deviceimplantation-icd](Procedure-mii-exa-kardio-kardiale-deviceimplantation-icd.md), [QuestionnaireResponse/mii-exa-kardio-questionnaireresponse-andere](QuestionnaireResponse-mii-exa-kardio-questionnaireresponse-andere.md), [QuestionnaireResponse/mii-exa-kardio-questionnaireresponse-angehoerige](QuestionnaireResponse-mii-exa-kardio-questionnaireresponse-angehoerige.md), [QuestionnaireResponse/mii-exa-kardio-questionnaireresponse-arzt](QuestionnaireResponse-mii-exa-kardio-questionnaireresponse-arzt.md) and [QuestionnaireResponse/mii-exa-kardio-questionnaireresponse-patient](QuestionnaireResponse-mii-exa-kardio-questionnaireresponse-patient.md)


* This material derives from the HL7 Terminology (THO). THO is copyright ©1989+ Health Level Seven International and is made available under the CC0 designation. For more licensing information see: [https://terminology.hl7.org/license.html](https://terminology.hl7.org/license.html)

* [Condition Category Codes](http://terminology.hl7.org/7.2.0/CodeSystem-condition-category.html): [Condition/mii-exa-kardio-diagnose-myokardinfarkt](Condition-mii-exa-kardio-diagnose-myokardinfarkt.md) and [Condition/mii-exa-kardio-embolischer-gefaessverschluss](Condition-mii-exa-kardio-embolischer-gefaessverschluss.md)
* [Condition Clinical Status Codes](http://terminology.hl7.org/7.2.0/CodeSystem-condition-clinical.html): [Condition/mii-exa-kardio-hoehergradiges-vitium](Condition-mii-exa-kardio-hoehergradiges-vitium.md)
* [ConditionVerificationStatus](http://terminology.hl7.org/7.2.0/CodeSystem-condition-ver-status.html): [Condition/mii-exa-kardio-diagnose-myokardinfarkt](Condition-mii-exa-kardio-diagnose-myokardinfarkt.md), [Condition/mii-exa-kardio-embolischer-gefaessverschluss](Condition-mii-exa-kardio-embolischer-gefaessverschluss.md) and [Condition/mii-exa-kardio-hoehergradiges-vitium](Condition-mii-exa-kardio-hoehergradiges-vitium.md)
* [DataAbsentReason](http://terminology.hl7.org/7.2.0/CodeSystem-data-absent-reason.html): [MII_PR_Kardio_Device](StructureDefinition-mii-pr-kardio-device.md), [MII_PR_Kardio_Kardiale_Deviceimplantation](StructureDefinition-mii-pr-kardio-kardiale-deviceimplantation.md), [MII_VS_Kardio_Geraetetyp_SNOMEDCT](ValueSet-mii-vs-kardio-geraetetyp-snomedct.md) and [MII_VS_Kardio_Kardiale_Deviceimplantation_OPS](ValueSet-mii-vs-kardio-kardiale-deviceimplantation-ops.md)
* [Observation Category Codes](http://terminology.hl7.org/7.2.0/CodeSystem-observation-category.html): [MII_PR_Kardio_Diagnose_Prozedur_Nein_Unbekannt](StructureDefinition-mii-pr-kardio-diagnose-prozedur-nein-unbekannt.md), [MII_PR_Kardio_EKG_Annotation](StructureDefinition-mii-pr-kardio-ekg-annotation.md)... Show 13 more, [MII_PR_Kardio_Linksventrikulaere_Ejektionsfraktion](StructureDefinition-mii-pr-kardio-linksventrikulaere-ejektionsfraktion.md), [MII_PR_Kardio_Observation_Rauchen](StructureDefinition-mii-pr-kardio-observation-rauchen.md), [MII_PR_Kardio_Score_Modifizierte_Rankin_Skala](StructureDefinition-mii-pr-kardio-score-modifizierte-rankin-skala.md), [MII_PR_Kardio_Score_NYHA](StructureDefinition-mii-pr-kardio-score-nyha.md), [Observation/mii-exa-kardio-ekg-rr-interval](Observation-mii-exa-kardio-ekg-rr-interval.md), [Observation/mii-exa-kardio-herzinsuffizienz-unbekannt](Observation-mii-exa-kardio-herzinsuffizienz-unbekannt.md), [Observation/mii-exa-kardio-hoehergradiges-vitium-nein](Observation-mii-exa-kardio-hoehergradiges-vitium-nein.md), [Observation/mii-exa-kardio-kein-device](Observation-mii-exa-kardio-kein-device.md), [Observation/mii-exa-kardio-lvef](Observation-mii-exa-kardio-lvef.md), [Observation/mii-exa-kardio-mrs](Observation-mii-exa-kardio-mrs.md), [Observation/mii-exa-kardio-pci-nein](Observation-mii-exa-kardio-pci-nein.md), [Observation/mii-exa-kardio-raucherstatus](Observation-mii-exa-kardio-raucherstatus.md) and [Observation/mii-exa-kardio-score-nyha-ii](Observation-mii-exa-kardio-score-nyha-ii.md)
* [UsageContextType](http://terminology.hl7.org/7.2.0/CodeSystem-usage-context-type.html): [MII_QN_Kardio_Acribis_Study_FollowUp](Questionnaire-mii-qn-kardio-acribis-study-followup.md)
* [identifierType](http://terminology.hl7.org/7.2.0/CodeSystem-v2-0203.html): [Condition/mii-exa-kardio-hoehergradiges-vitium](Condition-mii-exa-kardio-hoehergradiges-vitium.md), [Observation/mii-exa-kardio-hoehergradiges-vitium-nein](Observation-mii-exa-kardio-hoehergradiges-vitium-nein.md) and [Observation/mii-exa-kardio-raucherstatus](Observation-mii-exa-kardio-raucherstatus.md)
* [expandedYes-NoIndicator](http://terminology.hl7.org/7.2.0/CodeSystem-v2-0532.html): [MII_PR_Kardio_Anzahl_KH_Aufenthalte_wg_HF](StructureDefinition-mii-pr-kardio-anzahl-kh-aufenthalte-wg-hf.md), [MII_PR_Kardio_Diagnose_Prozedur_Nein_Unbekannt](StructureDefinition-mii-pr-kardio-diagnose-prozedur-nein-unbekannt.md)... Show 11 more, [MII_QN_Kardio_Acribis_Study_FollowUp](Questionnaire-mii-qn-kardio-acribis-study-followup.md), [MII_VS_Kardio_Nein_Unbekannt](ValueSet-mii-vs-kardio-nein-unbekannt.md), [Observation/mii-exa-kardio-anzahl-kh-aufenthalte-wg-hf2](Observation-mii-exa-kardio-anzahl-kh-aufenthalte-wg-hf2.md), [Observation/mii-exa-kardio-herzinsuffizienz-unbekannt](Observation-mii-exa-kardio-herzinsuffizienz-unbekannt.md), [Observation/mii-exa-kardio-hoehergradiges-vitium-nein](Observation-mii-exa-kardio-hoehergradiges-vitium-nein.md), [Observation/mii-exa-kardio-kein-device](Observation-mii-exa-kardio-kein-device.md), [Observation/mii-exa-kardio-pci-nein](Observation-mii-exa-kardio-pci-nein.md), [QuestionnaireResponse/mii-exa-kardio-questionnaireresponse-andere](QuestionnaireResponse-mii-exa-kardio-questionnaireresponse-andere.md), [QuestionnaireResponse/mii-exa-kardio-questionnaireresponse-angehoerige](QuestionnaireResponse-mii-exa-kardio-questionnaireresponse-angehoerige.md), [QuestionnaireResponse/mii-exa-kardio-questionnaireresponse-arzt](QuestionnaireResponse-mii-exa-kardio-questionnaireresponse-arzt.md) and [QuestionnaireResponse/mii-exa-kardio-questionnaireresponse-patient](QuestionnaireResponse-mii-exa-kardio-questionnaireresponse-patient.md)
* [ActCode](http://terminology.hl7.org/7.2.0/CodeSystem-v3-ActCode.html): [Observation/mii-exa-kardio-raucherstatus](Observation-mii-exa-kardio-raucherstatus.md)
* [ObservationInterpretation](http://terminology.hl7.org/7.2.0/CodeSystem-v3-ObservationInterpretation.html): [Observation/mii-exa-kardio-lvef](Observation-mii-exa-kardio-lvef.md)
* [ParticipationMode](http://terminology.hl7.org/7.2.0/CodeSystem-v3-ParticipationMode.html): [MII_QN_Kardio_Acribis_Study_FollowUp](Questionnaire-mii-qn-kardio-acribis-study-followup.md), [QuestionnaireResponse/mii-exa-kardio-questionnaireresponse-andere](QuestionnaireResponse-mii-exa-kardio-questionnaireresponse-andere.md), [QuestionnaireResponse/mii-exa-kardio-questionnaireresponse-angehoerige](QuestionnaireResponse-mii-exa-kardio-questionnaireresponse-angehoerige.md), [QuestionnaireResponse/mii-exa-kardio-questionnaireresponse-arzt](QuestionnaireResponse-mii-exa-kardio-questionnaireresponse-arzt.md) and [QuestionnaireResponse/mii-exa-kardio-questionnaireresponse-patient](QuestionnaireResponse-mii-exa-kardio-questionnaireresponse-patient.md)


* WHO, BfArM 1994 - 2024 - Die Erstellung erfolgt unter Verwendung der maschinenlesbaren Fassung des Bundesinstituts für Arzneimittel und Medizinprodukte (BfArM)

* [ICD-10-GM](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.base@2026.0.1&canonical=http://fhir.de/CodeSystem/bfarm/icd-10-gm): [Condition/mii-exa-kardio-diagnose-myokardinfarkt](Condition-mii-exa-kardio-diagnose-myokardinfarkt.md), [MII_PR_Kardio_Diagnose](StructureDefinition-mii-pr-kardio-diagnose.md), [MII_PR_Kardio_Diagnose_Prozedur_Nein_Unbekannt](StructureDefinition-mii-pr-kardio-diagnose-prozedur-nein-unbekannt.md), [MII_PR_Kardio_Klappenvitium](StructureDefinition-mii-pr-kardio-klappenvitium.md) and [MII_VS_Kardio_Klappenvitium_ICD](ValueSet-mii-vs-kardio-klappenvitium-icd.md)


