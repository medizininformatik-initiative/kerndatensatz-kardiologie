# Artefaktübersicht - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* **Artefaktübersicht**

## Artefaktübersicht

Diese Seite bietet eine Liste der FHIR-Artefakte, die in diesem Implementierungsleitfaden definiert sind.

### Strukturen: Fragebögen (Questionnaire) 

Diese definieren Formulare, die von Systemen verwendet werden, die mit dem Implementierungsleitfaden konform sind, um Daten von Endbenutzern zu erfassen oder ihnen zugänglich zu machen.

| | |
| :--- | :--- |
| [ MII QN Kardio Acribis Study FollowUp  ](Questionnaire-mii-qn-kardio-acribis-study-followup.md) | Follow-Up-Fragebogen für die ACRIBiS-Studie. |

### Strukturen: Ressourcenprofile 

Diese definieren Einschränkungen für FHIR-Ressourcen für Systeme, die mit dem Implementierungsleitfaden konform sind.

| | |
| :--- | :--- |
| [ MII PR Kardio Anzahl KH Aufenthalte wg HF  ](StructureDefinition-mii-pr-kardio-anzahl-kh-aufenthalte-wg-hf.md) | Profil zur Erfassung des Anzahl von Krankenhausaufenthalten wegen Herzinsuffizienz in einem Zeitraum im Kontext von ACRIBiS. |
| [ MII PR Kardio Atherosklerotisches Erstereignis  ](StructureDefinition-mii-pr-kardio-atherosklerotisches-erstereignis.md) | Profil zur Erfassung des Datum des ersten atherosklerotischen Ereignisses im Kontext von ACRIBiS. |
| [ MII PR Kardio Device  ](StructureDefinition-mii-pr-kardio-device.md) | Profil zur Abbildung eines implantierten Herzschrittmachers, Defibrillators oder ventrikulären Unterstützungssystems. |
| [ MII PR Kardio Diagnose  ](StructureDefinition-mii-pr-kardio-diagnose.md) | Profil zur Abbildung einer Diagnose im Kontext des Projekts Acribis. |
| [ MII PR Kardio Diagnose Prozedur Nein Unbekannt  ](StructureDefinition-mii-pr-kardio-diagnose-prozedur-nein-unbekannt.md) | Dieses Profil bildet das anamnestische Nichtvorliegen einer Diagnose, bzw. Prozedur, oder Unklarheit darüber ab. |
| [ MII PR Kardio EKG Annotation  ](StructureDefinition-mii-pr-kardio-ekg-annotation.md) | Profil zur Erfassung von Annotationen, z.B. Messergebnisse und Interpretationen, eines EKG. |
| [ MII PR Kardio EKG Durchführung  ](StructureDefinition-mii-pr-kardio-ekg-durchfuehrung.md) | Profil zur Erfassung der Durchführung eines EKG. |
| [ MII PR Kardio EKG Gerät  ](StructureDefinition-mii-pr-kardio-ekg-geraet.md) | Profil zur Abbildung eines EKG-Gerätes. |
| [ MII PR Kardio EKG Gerätedefinition  ](StructureDefinition-mii-pr-kardio-ekg-geraetedefinition.md) | Profil zur Abbildung einer EKG-Gerätedefinition. |
| [ MII PR Kardio EKG Kanal  ](StructureDefinition-mii-pr-kardio-ekg-kanal.md) | Profil zur Abbildung eines EKG-Kanals. |
| [ MII PR Kardio EKG Referenz  ](StructureDefinition-mii-pr-kardio-ekg-referenz.md) | Profil zur Referenzierung eines EKGs dessen Rohdaten an einem anderen Ort gespeichert werden. |
| [ MII PR Kardio Geräteprogrammierung  ](StructureDefinition-mii-pr-kardio-geraeteprogrammierung.md) | Mit dieser Observation kann die Geräteprogrammierung, d.h. die DeviceMetric **Schrittmachermodus**, eines Gerätes zu einem bestimmten Zeitpunkt abgebildet werden. |
| [ MII PR Kardio Kardiale Deviceimplantation  ](StructureDefinition-mii-pr-kardio-kardiale-deviceimplantation.md) | Profil zur Erfassung einer Implantation eines Herzschrittmachers, Kardioverter-Defibrillators oder ventrikulären Unterstützungssystems. |
| [ MII PR Kardio Klappenvitium  ](StructureDefinition-mii-pr-kardio-klappenvitium.md) | Profil zur Abbildung einer Herzklappenerkrankung. |
| [ MII PR Kardio Linksventrikulaere Ejektionsfraktion  ](StructureDefinition-mii-pr-kardio-linksventrikulaere-ejektionsfraktion.md) | Profil zur Angabe eines Untersuchungsergebnisses zur LVEF im Kontext des Projekts Acribis. |
| [ MII PR Kardio NBG Schrittmachermodus  ](StructureDefinition-mii-pr-kardio-nbg-schrittmachermodus.md) | Dieses Profil bildet die Einstellungsmöglichkeit eines Herzschrittmacher nach dem NBG-Standard ab. Die konkrete Programmierung eines Herzschrittmachers zu einem bestimmmten Zeitpunkt oder in einem Zeitraum wird in einer Observation abgebildet. |
| [ MII PR Kardio Observation Rauchen  ](StructureDefinition-mii-pr-kardio-observation-rauchen.md) | Profil zur Erfassung des Rauchverhaltens einer Person im Kontext des Modul Kardiologie. |
| [ MII PR Kardio Score Modifizierte Rankin Skala  ](StructureDefinition-mii-pr-kardio-score-modifizierte-rankin-skala.md) | Profil zur Erfassung des Outcomes eines Schlaganfalls mittels modifizierter Rankin-Skala. |
| [ MII PR Kardio Score NYHA  ](StructureDefinition-mii-pr-kardio-score-nyha.md) | Profil zur Erfassung der Einstufung der Stadien einer Herzinsuffizienz nach der New York Heart Association. |

### Terminologie: ValueSets 

Diese definieren Wertemengen, die von Systemen verwendet werden, die mit dem Implementierungsleitfaden konform sind.

| | |
| :--- | :--- |
| [ MII VS Kardio Allergene [SNOMED CT]  ](ValueSet-mii-vs-kardio-allergene-snomedct.md) | Liste von Substanzen |
| [ MII VS Kardio Atherosklerotisches Ereignis [SNOMED CT]  ](ValueSet-mii-vs-kardio-atherosklerotisches-ereignis-snomedct.md) | ValueSet for Relevant Codes for Atherosclerotic Events |
| [ MII VS Kardio EKG Kanäle [MDC]  ](ValueSet-mii-vs-kardio-ekg-kanaele-mdc.md) | ISO/IEEE 11073-10101 Codes für EKG Kanäle |
| [ MII VS Kardio EKG Prozedur [SNOMED CT]  ](ValueSet-mii-vs-kardio-ekg-prozedur-snomedct.md) | SNOMED CT Codes für verschieden EKG-Prozeduren. |
| [ MII VS Kardio Ethnie [SNOMED CT]  ](ValueSet-mii-vs-kardio-ethnie-snomedct.md) | SNOMED CT Codes für die Ethnie (in SNOMED CT derzeit als "racial group") im Kerndatensatz Kardiologie |
| [ MII VS Kardio Extended Condition Severity [SNOMED CT]  ](ValueSet-mii-vs-kardio-extended-condition-severity-snomedct.md) | An extended ValueSet including standard condition severity and SNOMED CT code 42796001 (End-stage) |
| [ MII VS Kardio Extended MII DiagnoseCodes [SNOMED CT]  ](ValueSet-mii-vs-kardio-extended-mii-diagnosecodes-snomed.md) | Erweiterung des MII VS Diagnose Diagnosecodes [SNOMED CT] |
| [ MII VS Kardio Geräteprogrammierung [MDC]  ](ValueSet-mii-vs-kardio-geraeteprogrammierung-mdc.md) | Dieses Value Set bildet die Programmierung eines implantierten Gerätes in der Kardiologie ab. Dazu werden Codes der ISO/IEEE 11073-10101 Nomenclature verwendet. |
| [ MII VS Kardio Gerätetyp [SNOMED CT]  ](ValueSet-mii-vs-kardio-geraetetyp-snomedct.md) | Dieses Value Set bildet die Gerätetypen implantierter Kardioverter-Defibrillator, Herzschrittmacher und ventrikuläres Unterstützungssystem ab. |
| [ MII VS Kardio Gewichtsveraenderung [SNOMED CT]  ](ValueSet-mii-vs-kardio-gewichtsveraenderung-snomedct.md) | Beschreibung von Gewichtsveränderungen |
| [ MII VS Kardio Kardiale Devicemimplantation Körperstelle [SNOMED CT]  ](ValueSet-mii-vs-kardio-kardiale-deviceimplantation-koerperstelle-snomedct.md) | Dieses Value Set bildet die Körperstellen, an denen eine Implantation eines kardialen Devices stattfindet, ab. |
| [ MII VS Kardio Kardiale Devicemimplantation [OPS]  ](ValueSet-mii-vs-kardio-kardiale-deviceimplantation-ops.md) | Dieses Value Set bildet die Implantation der kardialen Devices Kardioverter-Defibrillator (ICD), Herzschrittmacher zur kardialen Resynchronationstherapie (CRT) und ventrikuläre Unterstützungssysteme ab (VAD). |
| [ MII VS Kardio Kardiale Devicemimplantation [SNOMED CT]  ](ValueSet-mii-vs-kardio-kardiale-deviceimplantation-scnomedct.md) | Dieses Value Set bildet die Implantation der kardialen Devices Kardioverter-Defibrillator (ICD), Herzschrittmacher zur kardialen Resynchronationstherapie (CRT) und ventrikuläre Unterstützungssysteme ab (VAD). |
| [ MII VS Kardio Klappenvitium Grad [SNOMED CT]  ](ValueSet-mii-vs-kardio-klappenvitium-grad-snomedct.md) | SNOMED CT Codes für den Grad Klappenerkrankungen |
| [ MII VS Kardio Klappenvitium [ALPHA-ID]  ](ValueSet-mii-vs-kardio-klappenvitium-alphaid.md) | Alpha-ID-Codes für Klappenerkrankungen |
| [ MII VS Kardio Klappenvitium [ICD 10 GM]  ](ValueSet-mii-vs-kardio-klappenvitium-icd.md) | ICD-Codes für Klappenerkrankungen |
| [ MII VS Kardio Klappenvitium [SNOMED CT]  ](ValueSet-mii-vs-kardio-klappenvitium-snomedct.md) | SNOMED CT Codes für Klappenerkrankungen |
| [ MII VS Kardio Lebensmittelpunkt [M49]  ](ValueSet-mii-vs-kardio-lebensmittelpunkt-m49.md) | Dieses Value Set bildet den aktuellen Lebensmittelpunkt des Patienten unabhängig von seiner Herkunft ab. Damit wird der Parameter 'Geographic region' des SMART-REACH-Scores mit der Ergänzung Deutschland abgebildet. |
| [ MII VS Kardio MDC Objects Devices [MDC]  ](ValueSet-mii-vs-kardio-objekte-geraete-mdc.md) | ISO/IEEE 11073-10101 Codes für Objekte und Geräte (Partition 1) |
| [ MII VS Kardio Metriken EKG Annotationen [MDC]  ](ValueSet-mii-vs-kardio-metriken-ekg-annotationen-mdc.md) | ISO/IEEE 11073 Codes für Metriken (Part 2) und EKG Annotationen (Part 10) |
| [ MII VS Kardio Modifizierte Rankin Skala  ](ValueSet-mii-vs-kardio-modifizierte-rankin-skala.md) | Stufen der modifizierten Rankin-Skala |
| [ MII VS Kardio NYHA Klassen [SNOMED CT]  ](ValueSet-mii-vs-kardio-nyha-klassen-snomedct.md) | Klassen der New York Heart Association Classification |
| [ MII VS Kardio Nein Unbekannt  ](ValueSet-mii-vs-kardio-nein-unbekannt.md) | ValueSet mit Codes zum Abbilden des anamnestischen Nichtvorliegens einer Diagnose, bzw. Prozedur, oder Unklarheit darüber. |

### Terminologie: CodeSysteme 

Diese definieren neue CodeSysteme, die von Systemen verwendet werden, die mit diesem Implementierungsleitfaden konform sind.

| | |
| :--- | :--- |
| [ MII CS Kardio ACRIBiS Questionnaire Answer  ](CodeSystem-mii-cs-kardio-acribis-questionnaire-answer.md) | Questionnaire-lokale Antwortcodes für den ACRIBiS Follow-Up-Fragebogen. |
| [ MII CS Kardio Atherosklerotisches Ereignis  ](CodeSystem-mii-cs-kardio-atherosklerotisches-ereignis.md) | Code für ein unbestimmtes atherosklerotisches Ereignis |
| [ MII CS Kardio Lebensmittelpunkt  ](CodeSystem-mii-cs-kardio-lebensmittelpunkt.md) | Lebensmittelpunkt des Patienten |
| [ MII CS Kardio Modifizierte Rankin Skala  ](CodeSystem-mii-cs-kardio-modifizierte-rankin-skala.md) | Beeinträchtigung des Patienten nach Schlaganfall |
| [ MII CS Kardio Supplement [SNOMED CT]  ](CodeSystem-mii-cs-kardio-supplement-snomedct.md) | Supplement mit post-koordinierenden SNOMED CT-Codes aus dem Modul Kardiologie. |

### Beispiel: Beispielinstanzen 

Dies sind Beispielinstanzen, die zeigen, wie Daten aussehen könnten, die von Systemen produziert und konsumiert werden, die mit diesem Implementierungsleitfaden konform sind.

| | |
| :--- | :--- |
| [ MII EXA Kardio Anzahl KH Aufenthalte WG HF  ](Observation-mii-exa-kardio-anzahl-kh-aufenthalte-wg-hf.md) | Beispiel einer Observation für 3 Krankenhausaufenthalte wegen Herzinsuffizienz im letzten Jahr |
| [ MII EXA Kardio Anzahl KH Aufenthalte WG HF (mit Angabe 'Weiß nicht')  ](Observation-mii-exa-kardio-anzahl-kh-aufenthalte-wg-hf2.md) | Beispiel einer Observation bei Angabe 'Ich weiß es nicht' zu Krankenhausaufenthalte wegen Herzinsuffizienz im letzten Jahr |
| [ MII EXA Kardio Atherosklerotisches Erstereignis  ](Observation-mii-exa-kardio-atherosklerotisches-erstereignis.md) | Beispiel einer Observation für das Datum eines unbestimmten atherosklerotischen Erstereignisses |
| [ MII EXA Kardio Device ICD  ](Device-mii-exa-kardio-device-icd.md) | Beispiel eines implantierten Kardioverter-Defibrillators (ICD) |
| [ MII EXA Kardio EKG Durchführung  ](Procedure-mii-exa-kardio-ekg-durchfuehrung.md) | Beispiel einer Durchführung eines 12-Kanal Ruhe-EKGs |
| [ MII EXA Kardio EKG Geraet Mortara  ](Device-mii-exa-kardio-ekg-geraet-mortara.md) | Beispiel eines EKG Gerätes der Firma Mortara Instruments |
| [ MII EXA Kardio EKG Geraetedefinition Mortara  ](DeviceDefinition-mii-exa-kardio-ekg-geraetedefinition-mortara.md) | Beispiel einer EKG Gerätedefinition für ein EKG-Gerät der Firma Mortara Instruments |
| [ MII EXA Kardio EKG Kanal I  ](Device-mii-exa-kardio-ekg-kanal-i.md) | Beispiel eines EKG-Kanals (I) eines Gerätes der Firma Mortara Instruments |
| [ MII EXA Kardio EKG Kanal II  ](Device-mii-exa-kardio-ekg-kanal-ii.md) | Beispiel eines EKG-Kanals (II) eines Gerätes der Firma Mortara Instruments |
| [ MII EXA Kardio EKG Kanal III  ](Device-mii-exa-kardio-ekg-kanal-iii.md) | Beispiel eines EKG-Kanals (III) eines Gerätes der Firma Mortara Instruments |
| [ MII EXA Kardio EKG RR Interval  ](Observation-mii-exa-kardio-ekg-rr-interval.md) | Beispiel einer Observation zur Darstellung des RR Intervals eines aufgezeichneten EKGs |
| [ MII EXA Kardio EKG Referenz  ](DocumentReference-mii-exa-kardio-ekg-referenz.md) | Beispiel einer Referenz auf ein EKG, dessen Rohdaten an einem anderen Ort gespeichert werden. |
| [ MII EXA Kardio Emoblischer Gefäßverschluss  ](Condition-mii-exa-kardio-embolischer-gefaessverschluss.md) | Beispiel: Der Patient hat angegeben, einen embolischen Gefäßverschluss gehabt zu haben. |
| [ MII EXA Kardio Geräteprogrammierung VVI  ](Observation-mii-exa-kardio-geraeteprogrammierung-vvi.md) | Beispiel der Einstellung eines Kardioverter-Defibrillators (ICD) im VVI-Modus |
| [ MII EXA Kardio Herzinsuffizienz Unbekannt  ](Observation-mii-exa-kardio-herzinsuffizienz-unbekannt.md) | Beispiel: Der Patient weiß nicht, ob er Herzinsuffizienz hat. |
| [ MII EXA Kardio Höhergradiges Vitium  ](Condition-mii-exa-kardio-hoehergradiges-vitium.md) | Beispiel zur Abbildung eines unbestimmten höhergradigen Klappenvitiums. |
| [ MII EXA Kardio Höhergradiges Vitium Nein  ](Observation-mii-exa-kardio-hoehergradiges-vitium-nein.md) | Beispiel um abzubilden, dass kein höhergradiges Klappenvitium vorliegt. |
| [ MII EXA Kardio Kardiale Deviceimplantation ICD  ](Procedure-mii-exa-kardio-kardiale-deviceimplantation-icd.md) | Beispiel einer Implantation eines Kardioverter-Defibrillators (ICD) |
| [ MII EXA Kardio Kein Device  ](Observation-mii-exa-kardio-kein-device.md) | Beispiel: Der Patient hat kein implantiertes kardiales Device. |
| [ MII EXA Kardio LVEF  ](Observation-mii-exa-kardio-lvef.md) | Beispielhafte Observation einer linksventrikulären Ejektionsfraktion mittels Echokardiographie |
| [ MII EXA Kardio MRS  ](Observation-mii-exa-kardio-mrs.md) | Beispielhafte Instanz zur Dokumentation der mRS-Skala nach einem Schlaganfall gemäß MII PR Kardio Score mRS. |
| [ MII EXA Kardio NBG Schrittmachermodus  ](DeviceMetric-mii-exa-kardio-nbg-schrittmachermodus.md) | Beispiel einer DeviceMetric für die Geräteprogrammierung eines ICD |
| [ MII EXA Kardio PCI/Stent Nein  ](Observation-mii-exa-kardio-pci-nein.md) | Beispiel: Der Patient hatte noch keine Koronarintervention mit PCI/Stent. |
| [ MII EXA Kardio QuestionnaireResponse Andere  ](QuestionnaireResponse-mii-exa-kardio-questionnaireresponse-andere.md) | Beispiel eines ausgefüllten Follow-Up Fragebogens aus Sicht einer Anderen-Person (hier: Study Nurse) |
| [ MII EXA Kardio QuestionnaireResponse Angehoerige  ](QuestionnaireResponse-mii-exa-kardio-questionnaireresponse-angehoerige.md) | Beispiel eines ausgefüllten Follow-Up Fragebogens aus Sicht eines Angehörigen |
| [ MII EXA Kardio QuestionnaireResponse Arzt  ](QuestionnaireResponse-mii-exa-kardio-questionnaireresponse-arzt.md) | Beispiel eines ausgefüllten Follow-Up Fragebogens aus Sicht eines Arztes/Ärztin |
| [ MII EXA Kardio QuestionnaireResponse Patient  ](QuestionnaireResponse-mii-exa-kardio-questionnaireresponse-patient.md) | Beispiel eines ausgefüllten Follow-Up Fragebogens aus Sicht eines Patienten/in |
| [ MII EXA Kardio Raucherstatus  ](Observation-mii-exa-kardio-raucherstatus.md) | Eine Beispielinstanz zur Darstellung des Rauchverhaltens einer Person gemäß dem Profil MII_PR_Kardio_Observation_Rauchen. |
| [ MII EXA Kardio Rolle Kardiologe  ](PractitionerRole-mii-exa-kardio-rolle-kardiologe.md) | Beispielhafte Rolle eines Kardiologen zur Verwendung in performer-Referenzen. |
| [ MII EXA Kardio Score NYHA II  ](Observation-mii-exa-kardio-score-nyha-ii.md) | Beispielhafte Instanz zur Dokumentation der NYHA-Klassifikation bei Herzinsuffizienz gemäß MII PR Kardio Score NYHA. |
| [ MII Kardio Diagnose Myokardinfarkt  ](Condition-mii-exa-kardio-diagnose-myokardinfarkt.md) | Beispielhafte vollständige Instanz einer Diagnose die vom Arzt bestätigt tatsächlich vorliegt gemäß dem Profil MII_PR_Kardio_Diagnose im Rahmen des ACRIBIS-Projekts. |

### Sonstige 

Dies sind Ressourcen, die in diesem Implementierungsleitfaden verwendet werden, die in keine der anderen Kategorien passen.

| | |
| :--- | :--- |
| [ MII Param Kardio Manifest  ](Parameters-mii-param-kardio-manifest.md) | Manifest zur zentralen Festlegung der verwendeten Versionen verschiedener Referenzen. |

