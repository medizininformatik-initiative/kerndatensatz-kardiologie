# MII QN Kardio Acribis Study FollowUp - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII QN Kardio Acribis Study FollowUp**

## Questionnaire: MII QN Kardio Acribis Study FollowUp (Experimentell) 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/Questionnaire/mii-qn-kardio-acribis-study-followup | *Version*:2027.0.0-ballot.rc1 |
| Draft Stand: 2025-11-17 | *Maschinenlesbarer Name*:MII_QN_Kardio_Acribis_Study_FollowUp |
| **Verwendung**: Clinical Focus: Clinical trial (procedure) | |

 
Follow-Up-Fragebogen im Rahmen der Acribis-Studie. 

*  [Baumansicht](#tabs-tree) 
*  [Beispielanzeige](#tabs-sample) 
*  [Formularlogik](#tabs-logic) 

### Diesen Fragebogen testen

### Antworten zu diesem Fragebogen

* [Beispiel eines ausgefüllten Follow-Up Fragebogens aus Sicht einer Anderen-Person (hier: Study Nurse)](QuestionnaireResponse-mii-exa-kardio-questionnaireresponse-andere.md)
* [Beispiel eines ausgefüllten Follow-Up Fragebogens aus Sicht eines Angehörigen](QuestionnaireResponse-mii-exa-kardio-questionnaireresponse-angehoerige.md)
* [Beispiel eines ausgefüllten Follow-Up Fragebogens aus Sicht eines Arztes/Ärztin](QuestionnaireResponse-mii-exa-kardio-questionnaireresponse-arzt.md)
* [Beispiel eines ausgefüllten Follow-Up Fragebogens aus Sicht eines Patienten/in](QuestionnaireResponse-mii-exa-kardio-questionnaireresponse-patient.md)



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "mii-qn-kardio-acribis-study-followup",
  "language" : "de",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/Questionnaire/mii-qn-kardio-acribis-study-followup",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_QN_Kardio_Acribis_Study_FollowUp",
  "title" : "MII QN Kardio Acribis Study FollowUp",
  "status" : "draft",
  "experimental" : true,
  "subjectType" : ["Patient"],
  "date" : "2025-11-17",
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
  "description" : "Follow-Up-Fragebogen im Rahmen der Acribis-Studie.",
  "useContext" : [{
    "code" : {
      "system" : "http://terminology.hl7.org/CodeSystem/usage-context-type",
      "code" : "focus"
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "110465008",
        "display" : "Clinical trial (procedure)"
      }]
    }
  }],
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "purpose" : "Follow-Up-Fragebogen im Rahmen der Acribis-Studie.",
  "item" : [{
    "linkId" : "group1",
    "text" : "Allgemeine Angaben",
    "type" : "group",
    "repeats" : false,
    "item" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://hl7.org/fhir/questionnaire-item-control",
            "code" : "radio-button",
            "display" : "Radio Button"
          }]
        }
      }],
      "linkId" : "o_1",
      "prefix" : "Ausfüllende Person",
      "text" : "Wer füllt den Fragebogen aus?",
      "type" : "choice",
      "repeats" : false,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-acribis-questionnaire-answer",
          "code" : "respondent_patient",
          "display" : "Patient/Patientin"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-acribis-questionnaire-answer",
          "code" : "respondent_relative",
          "display" : "Angehöriger/Angehörige"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-acribis-questionnaire-answer",
          "code" : "respondent_physician",
          "display" : "Arzt/Ärztin"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-acribis-questionnaire-answer",
          "code" : "respondent_other",
          "display" : "Andere Person"
        }
      }],
      "item" : [{
        "linkId" : "o_1a",
        "prefix" : "Ausfüllende Person",
        "text" : "Um wen handelt es sich (Name oder Rolle)?",
        "type" : "string",
        "enableWhen" : [{
          "question" : "o_1",
          "operator" : "=",
          "answerCoding" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-acribis-questionnaire-answer",
            "code" : "respondent_other",
            "display" : "Andere Person"
          }
        }],
        "enableBehavior" : "all"
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://hl7.org/fhir/questionnaire-item-control",
            "code" : "radio-button",
            "display" : "Radio Button"
          }]
        }
      }],
      "linkId" : "243134446838",
      "text" : "In welcher Form erfolgt an Ihrem Standort das Follow-Up?",
      "type" : "choice",
      "enableWhen" : [{
        "question" : "o_1",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-acribis-questionnaire-answer",
          "code" : "respondent_other",
          "display" : "Andere Person"
        }
      },
      {
        "question" : "o_1",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-acribis-questionnaire-answer",
          "code" : "respondent_physician",
          "display" : "Arzt/Ärztin"
        }
      }],
      "enableBehavior" : "any",
      "repeats" : false,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-acribis-questionnaire-answer",
          "code" : "written_follow_up",
          "display" : "Schriftliches Follow-Up (Brief/E-Mail/App, ggf. telefonisch)"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-acribis-questionnaire-answer",
          "code" : "verbal_follow_up",
          "display" : "Telefonisches Follow-Up (Telefon, ggf. schriftlich)"
        }
      }],
      "item" : [{
        "linkId" : "group2",
        "text" : "Telefonisches Follow-Up",
        "type" : "group",
        "enableWhen" : [{
          "question" : "243134446838",
          "operator" : "=",
          "answerCoding" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-acribis-questionnaire-answer",
            "code" : "verbal_follow_up",
            "display" : "Telefonisches Follow-Up (Telefon, ggf. schriftlich)"
          }
        }],
        "enableBehavior" : "all",
        "repeats" : false,
        "item" : [{
          "linkId" : "first_telefon_datum",
          "text" : "Telefonat 1. Versuch (Tag 0 bis 7)",
          "type" : "dateTime",
          "repeats" : false,
          "item" : [{
            "linkId" : "first_telefon_erfolgreich",
            "code" : [{
              "system" : "http://snomed.info/sct",
              "code" : "385668008",
              "display" : "Success of action"
            }],
            "text" : "1. Telefonat erfolgreich?",
            "type" : "boolean",
            "enableWhen" : [{
              "question" : "first_telefon_datum",
              "operator" : "exists",
              "answerBoolean" : true
            }],
            "enableBehavior" : "all",
            "repeats" : false
          }]
        },
        {
          "linkId" : "second_telefon_datum",
          "text" : "Telefonat 2. Versuch (Tag 0 bis 7)",
          "type" : "dateTime",
          "enableWhen" : [{
            "question" : "first_telefon_erfolgreich",
            "operator" : "=",
            "answerBoolean" : false
          }],
          "enableBehavior" : "all",
          "repeats" : false,
          "item" : [{
            "linkId" : "second_telefon_erfolgreich",
            "code" : [{
              "system" : "http://snomed.info/sct",
              "code" : "385668008",
              "display" : "Success of action"
            }],
            "text" : "2. Telefonat erfolgreich?",
            "type" : "boolean",
            "enableWhen" : [{
              "question" : "second_telefon_datum",
              "operator" : "exists",
              "answerBoolean" : true
            }],
            "enableBehavior" : "all",
            "repeats" : false
          }]
        },
        {
          "linkId" : "third_telefon_datum",
          "text" : "Telefonat 3. Versuch (Tag 0 bis 7)",
          "type" : "dateTime",
          "enableWhen" : [{
            "question" : "second_telefon_erfolgreich",
            "operator" : "=",
            "answerBoolean" : false
          }],
          "enableBehavior" : "all",
          "repeats" : false,
          "item" : [{
            "linkId" : "third_telefon_erfolgreich",
            "code" : [{
              "system" : "http://snomed.info/sct",
              "code" : "385668008",
              "display" : "Success of action"
            }],
            "text" : "3. Telefonat erfolgreich?",
            "type" : "boolean",
            "enableWhen" : [{
              "question" : "third_telefon_datum",
              "operator" : "exists",
              "answerBoolean" : true
            }],
            "enableBehavior" : "all",
            "repeats" : false
          }]
        },
        {
          "linkId" : "259984180805",
          "text" : "ggf. Versand schriftlicher Information (Tag 7 bis 21)",
          "type" : "date",
          "enableWhen" : [{
            "question" : "third_telefon_erfolgreich",
            "operator" : "=",
            "answerBoolean" : false
          }],
          "repeats" : false
        },
        {
          "linkId" : "fourth_telefon_datum",
          "text" : "Telefonat 4. Versuch (Tag 21 bis 28)",
          "type" : "dateTime",
          "enableWhen" : [{
            "question" : "third_telefon_erfolgreich",
            "operator" : "=",
            "answerBoolean" : false
          }],
          "enableBehavior" : "all",
          "repeats" : false,
          "item" : [{
            "linkId" : "fourth_telefon_erfolgreich",
            "code" : [{
              "system" : "http://snomed.info/sct",
              "code" : "385668008",
              "display" : "Success of action"
            }],
            "text" : "4. Telefonat erfolgreich?",
            "type" : "boolean",
            "enableWhen" : [{
              "question" : "fourth_telefon_datum",
              "operator" : "exists",
              "answerBoolean" : true
            }],
            "enableBehavior" : "all",
            "repeats" : false
          }]
        },
        {
          "linkId" : "fifth_telefon_datum",
          "text" : "Telefonat 5. Versuch (Tag 21 bis 28)",
          "type" : "dateTime",
          "enableWhen" : [{
            "question" : "fourth_telefon_erfolgreich",
            "operator" : "=",
            "answerBoolean" : false
          }],
          "enableBehavior" : "all",
          "repeats" : false,
          "item" : [{
            "linkId" : "fifth_telefon_erfolgreich",
            "code" : [{
              "system" : "http://snomed.info/sct",
              "code" : "385668008",
              "display" : "Success of action"
            }],
            "text" : "5. Telefonat erfolgreich?",
            "type" : "boolean",
            "enableWhen" : [{
              "question" : "fifth_telefon_datum",
              "operator" : "exists",
              "answerBoolean" : true
            }],
            "enableBehavior" : "all",
            "repeats" : false
          }]
        },
        {
          "linkId" : "sixth_telefon_datum",
          "text" : "Telefonat 6. Versuch (Tag 21 bis 28)",
          "type" : "dateTime",
          "enableWhen" : [{
            "question" : "fifth_telefon_erfolgreich",
            "operator" : "=",
            "answerBoolean" : false
          }],
          "enableBehavior" : "all",
          "repeats" : false,
          "item" : [{
            "linkId" : "sixth_telefon_erfolgreich",
            "code" : [{
              "system" : "http://snomed.info/sct",
              "code" : "385668008",
              "display" : "Success of action"
            }],
            "text" : "6. Telefonat erfolgreich?",
            "type" : "boolean",
            "enableWhen" : [{
              "question" : "sixth_telefon_datum",
              "operator" : "exists",
              "answerBoolean" : true
            }],
            "enableBehavior" : "all",
            "repeats" : false
          }]
        },
        {
          "linkId" : "430864563593",
          "text" : "ggf. Versand schriftlicher Information (Tag 28 bis 42)",
          "type" : "date",
          "enableWhen" : [{
            "question" : "sixth_telefon_erfolgreich",
            "operator" : "=",
            "answerBoolean" : false
          }],
          "repeats" : false
        },
        {
          "linkId" : "seventh_telefon_datum",
          "text" : "Telefonat 7. Versuch (Tag 42 bis 49)",
          "type" : "dateTime",
          "enableWhen" : [{
            "question" : "sixth_telefon_erfolgreich",
            "operator" : "=",
            "answerBoolean" : false
          }],
          "enableBehavior" : "all",
          "repeats" : false,
          "item" : [{
            "linkId" : "seventh_telefon_erfolgreich",
            "code" : [{
              "system" : "http://snomed.info/sct",
              "code" : "385668008",
              "display" : "Success of action"
            }],
            "text" : "7. Telefonat erfolgreich?",
            "type" : "boolean",
            "enableWhen" : [{
              "question" : "seventh_telefon_datum",
              "operator" : "exists",
              "answerBoolean" : true
            }],
            "enableBehavior" : "all",
            "repeats" : false
          }]
        },
        {
          "linkId" : "eighth_telefon_datum",
          "text" : "Telefonat 8. Versuch (Tag 42 bis 49)",
          "type" : "dateTime",
          "enableWhen" : [{
            "question" : "seventh_telefon_erfolgreich",
            "operator" : "=",
            "answerBoolean" : false
          }],
          "enableBehavior" : "all",
          "repeats" : false,
          "item" : [{
            "linkId" : "eighth_telefon_erfolgreich",
            "code" : [{
              "system" : "http://snomed.info/sct",
              "code" : "385668008",
              "display" : "Success of action"
            }],
            "text" : "8. Telefonat erfolgreich?",
            "type" : "boolean",
            "enableWhen" : [{
              "question" : "eighth_telefon_datum",
              "operator" : "exists",
              "answerBoolean" : true
            }],
            "enableBehavior" : "all",
            "repeats" : false
          }]
        },
        {
          "linkId" : "ninth_telefon_datum",
          "text" : "Telefonat 9. Versuch (Tag 42 bis 49)",
          "type" : "dateTime",
          "enableWhen" : [{
            "question" : "eighth_telefon_erfolgreich",
            "operator" : "=",
            "answerBoolean" : false
          }],
          "enableBehavior" : "all",
          "repeats" : false,
          "item" : [{
            "linkId" : "ninth_telefon_erfolgreich",
            "code" : [{
              "system" : "http://snomed.info/sct",
              "code" : "385668008",
              "display" : "Success of action"
            }],
            "text" : "9. Telefonat erfolgreich?",
            "type" : "boolean",
            "enableWhen" : [{
              "question" : "ninth_telefon_datum",
              "operator" : "exists",
              "answerBoolean" : true
            }],
            "enableBehavior" : "all",
            "repeats" : false
          }]
        }]
      },
      {
        "linkId" : "653817429944",
        "text" : "Schriftliches Follow-Up",
        "type" : "group",
        "enableWhen" : [{
          "question" : "243134446838",
          "operator" : "=",
          "answerCoding" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-acribis-questionnaire-answer",
            "code" : "written_follow_up",
            "display" : "Schriftliches Follow-Up (Brief/E-Mail/App, ggf. telefonisch)"
          }
        }],
        "enableBehavior" : "all",
        "repeats" : false,
        "item" : [{
          "linkId" : "531811477735",
          "text" : "Schriftlicher 1. Versuch (Tag 0 bis 14)",
          "type" : "date",
          "repeats" : false,
          "item" : [{
            "linkId" : "551754048694",
            "text" : "ggf. Telefonat 1. Versuch (Tag 14 bis 21)",
            "type" : "dateTime",
            "enableWhen" : [{
              "question" : "531811477735",
              "operator" : "exists",
              "answerBoolean" : true
            }],
            "repeats" : false
          },
          {
            "linkId" : "339142957184",
            "text" : "ggf. Telefonat 2. Versuch (Tag 14 bis 21)",
            "type" : "dateTime",
            "enableWhen" : [{
              "question" : "531811477735",
              "operator" : "exists",
              "answerBoolean" : true
            }],
            "repeats" : false
          },
          {
            "linkId" : "336352021151",
            "text" : "ggf. Telefonat 3. Versuch (Tag 14 bis 21)",
            "type" : "dateTime",
            "enableWhen" : [{
              "question" : "531811477735",
              "operator" : "exists",
              "answerBoolean" : true
            }],
            "repeats" : false
          },
          {
            "linkId" : "683622335202",
            "text" : "1. Kontakt erfolgreich?",
            "type" : "boolean",
            "enableWhen" : [{
              "question" : "531811477735",
              "operator" : "exists",
              "answerBoolean" : true
            }],
            "repeats" : false
          }]
        },
        {
          "linkId" : "708234487988",
          "text" : "Schriftlicher 2. Versuch (Tag 21 bis 35)",
          "type" : "date",
          "enableWhen" : [{
            "question" : "683622335202",
            "operator" : "=",
            "answerBoolean" : false
          }],
          "repeats" : false,
          "item" : [{
            "linkId" : "354842802717",
            "text" : "ggf. Telefonat 1. Versuch (Tag 35 bis 42)",
            "type" : "dateTime",
            "repeats" : false
          },
          {
            "linkId" : "638025827421",
            "text" : "ggf. Telefonat 2. Versuch (Tag 35 bis 42)",
            "type" : "dateTime",
            "repeats" : false
          },
          {
            "linkId" : "283707904427",
            "text" : "ggf. Telefonat 3. Versuch (Tag 35 bis 42)",
            "type" : "dateTime",
            "repeats" : false
          },
          {
            "linkId" : "343328919972",
            "text" : "2. Kontakt erfolgreich?",
            "type" : "boolean",
            "enableWhen" : [{
              "question" : "708234487988",
              "operator" : "exists",
              "answerBoolean" : true
            }],
            "repeats" : false
          }]
        },
        {
          "linkId" : "120750438814",
          "text" : "Schriftlicher 3. Versuch (Tag 42 bis 49)",
          "type" : "date",
          "enableWhen" : [{
            "question" : "343328919972",
            "operator" : "=",
            "answerBoolean" : false
          }],
          "repeats" : false,
          "item" : [{
            "linkId" : "994511806344",
            "text" : "3. Kontakt erfolgreich?",
            "type" : "boolean",
            "enableWhen" : [{
              "question" : "120750438814",
              "operator" : "exists",
              "answerBoolean" : true
            }],
            "repeats" : false
          }]
        }]
      },
      {
        "linkId" : "175302299373",
        "text" : "Kontaktaufnahme Hausarzt (nach Tag 49)",
        "type" : "dateTime",
        "enableWhen" : [{
          "question" : "994511806344",
          "operator" : "=",
          "answerBoolean" : false
        },
        {
          "question" : "ninth_telefon_erfolgreich",
          "operator" : "=",
          "answerBoolean" : false
        }],
        "enableBehavior" : "any",
        "repeats" : true,
        "item" : [{
          "linkId" : "242587999496",
          "text" : "War die Kontaktaufnahme mit dem Hausarzt erfolgreich?",
          "type" : "boolean",
          "enableWhen" : [{
            "question" : "175302299373",
            "operator" : "exists",
            "answerBoolean" : true
          }],
          "repeats" : false
        }]
      },
      {
        "linkId" : "247749186905",
        "text" : "Kontaktaufnahme Einwohnermeldeamt (nach Tag 49)",
        "type" : "dateTime",
        "enableWhen" : [{
          "question" : "ninth_telefon_erfolgreich",
          "operator" : "=",
          "answerBoolean" : false
        },
        {
          "question" : "994511806344",
          "operator" : "=",
          "answerBoolean" : false
        }],
        "enableBehavior" : "any",
        "repeats" : true,
        "item" : [{
          "linkId" : "915186845968",
          "text" : "War die Kontaktaufnahme mit dem Einwohnermeldeamt erfolgreich?",
          "type" : "boolean",
          "enableWhen" : [{
            "question" : "247749186905",
            "operator" : "exists",
            "answerBoolean" : true
          }],
          "repeats" : false
        }]
      }]
    }]
  },
  {
    "linkId" : "group3",
    "text" : "Vitalstatus",
    "type" : "group",
    "enableWhen" : [{
      "question" : "o_1",
      "operator" : "=",
      "answerCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-acribis-questionnaire-answer",
        "code" : "respondent_relative",
        "display" : "Angehöriger/Angehörige"
      }
    },
    {
      "question" : "o_1",
      "operator" : "=",
      "answerCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-acribis-questionnaire-answer",
        "code" : "respondent_physician",
        "display" : "Arzt/Ärztin"
      }
    },
    {
      "question" : "o_1",
      "operator" : "=",
      "answerCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-acribis-questionnaire-answer",
        "code" : "respondent_other",
        "display" : "Andere Person"
      }
    }],
    "enableBehavior" : "any",
    "repeats" : false,
    "item" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://hl7.org/fhir/questionnaire-item-control",
            "code" : "radio-button",
            "display" : "Radio Button"
          }]
        }
      }],
      "linkId" : "o_2",
      "code" : [{
        "system" : "http://snomed.info/sct",
        "code" : "419099009",
        "display" : "Dead"
      }],
      "text" : "Ist die Patientin/der Patient verstorben?",
      "type" : "choice",
      "enableWhen" : [{
        "question" : "o_1",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-acribis-questionnaire-answer",
          "code" : "respondent_relative",
          "display" : "Angehöriger/Angehörige"
        }
      },
      {
        "question" : "o_1",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-acribis-questionnaire-answer",
          "code" : "respondent_physician",
          "display" : "Arzt/Ärztin"
        }
      },
      {
        "question" : "o_1",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-acribis-questionnaire-answer",
          "code" : "respondent_other",
          "display" : "Andere Person"
        }
      }],
      "enableBehavior" : "any",
      "repeats" : false,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
          "code" : "Y",
          "display" : "Yes"
        }
      },
      {
        "valueCoding" : {
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
          "code" : "N",
          "display" : "No"
        }
      },
      {
        "valueCoding" : {
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
          "code" : "ASKU",
          "display" : "asked but unknown"
        }
      },
      {
        "valueCoding" : {
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
          "code" : "NI",
          "display" : "No Information"
        },
        "initialSelected" : true
      }],
      "item" : [{
        "linkId" : "o_2a",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "399753006",
          "display" : "Date of death"
        }],
        "text" : "Wann ist die Patientin/der Patient verstorben?",
        "type" : "date",
        "enableWhen" : [{
          "question" : "o_2",
          "operator" : "=",
          "answerCoding" : {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
            "code" : "Y",
            "display" : "Yes"
          }
        }],
        "enableBehavior" : "all",
        "repeats" : false
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "http://hl7.org/fhir/questionnaire-item-control",
              "code" : "radio-button",
              "display" : "Radio Button"
            }]
          }
        }],
        "linkId" : "o_2b",
        "text" : "Ist eine Herz-Kreislauf-Erkrankung als Todesursache fesgestellt worden?",
        "type" : "choice",
        "enableWhen" : [{
          "question" : "o_2",
          "operator" : "=",
          "answerCoding" : {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
            "code" : "Y",
            "display" : "Yes"
          }
        }],
        "enableBehavior" : "all",
        "repeats" : false,
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
            "code" : "Y",
            "display" : "Yes"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
            "code" : "N",
            "display" : "No"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
            "code" : "ASKU",
            "display" : "asked but unknown"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
            "code" : "NI",
            "display" : "No Information"
          },
          "initialSelected" : true
        }],
        "item" : [{
          "extension" : [{
            "url" : "http://hl7.org/fhir/StructureDefinition/preferredTerminologyServer",
            "valueUrl" : "https://snowstorm.ihtsdotools.org/fhir"
          },
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
            "valueCodeableConcept" : {
              "coding" : [{
                "system" : "http://hl7.org/fhir/questionnaire-item-control",
                "code" : "drop-down",
                "display" : "Drop down"
              }]
            }
          }],
          "linkId" : "o_2c",
          "code" : [{
            "system" : "http://snomed.info/sct",
            "code" : "184305005",
            "display" : "Cause of death"
          }],
          "text" : "Welche der im Antwortschema aufgeführten Herz-Kreislauf-bedingten Todesursachen lag vor?",
          "type" : "choice",
          "enableWhen" : [{
            "question" : "o_2b",
            "operator" : "=",
            "answerCoding" : {
              "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
              "code" : "Y",
              "display" : "Yes"
            }
          }],
          "enableBehavior" : "all",
          "repeats" : false,
          "answerOption" : [{
            "valueCoding" : {
              "system" : "http://snomed.info/sct",
              "code" : "22298006",
              "display" : "Myocardial infarction"
            }
          },
          {
            "valueCoding" : {
              "system" : "http://snomed.info/sct",
              "code" : "422504002",
              "display" : "Ischemic stroke"
            }
          },
          {
            "valueCoding" : {
              "system" : "http://snomed.info/sct",
              "code" : "274100004",
              "display" : "Cerebral hemorrhage"
            }
          },
          {
            "valueCoding" : {
              "system" : "http://snomed.info/sct",
              "code" : "21454007",
              "display" : "Subarachnoid hemorrhage"
            }
          },
          {
            "valueCoding" : {
              "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-acribis-questionnaire-answer",
              "code" : "cerebral_hemorrhage_intracerebral_or_subarachnoid",
              "display" : "Hirnblutung (intrazerebral oder subarachnoidal)"
            }
          },
          {
            "valueCoding" : {
              "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-acribis-questionnaire-answer",
              "code" : "other_cardiovascular_cause",
              "display" : "Andere Herz-Kreislauf bedingte Ursache"
            }
          },
          {
            "valueCoding" : {
              "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
              "code" : "ASKU",
              "display" : "asked but unknown"
            }
          },
          {
            "valueCoding" : {
              "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
              "code" : "NI",
              "display" : "No Information"
            },
            "initialSelected" : true
          }]
        }]
      }]
    }]
  },
  {
    "linkId" : "943114148728",
    "text" : "Sehr geehrte Teilnehmende, die folgenden Fragen beziehen sich auf Diagnosen, Krankenhausaufenthalte oder auch Behandlungen die seit Ihrer Teilnahme an der ACRIBiS Studie vor einem Jahr stattfanden. Diese Nachfolgebefragung dient dem Zweck festzustellen in wie weit sich der Gesundheitszustand des/der Probanden/in geändert hat und in wie weit diese Veränderungen Ihr Wohlbefinden beeinflusst haben. Die Teilnahme an der Studie fand am \"Datum Einschluß\" statt.",
    "type" : "display"
  },
  {
    "linkId" : "group4",
    "text" : "Diagnosen im letzten Jahr (seit Teilnahme an der Acribis-Studie)",
    "type" : "group",
    "repeats" : false,
    "item" : [{
      "linkId" : "834093031358",
      "text" : "Herzinfarkt",
      "type" : "group",
      "repeats" : false,
      "item" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "http://hl7.org/fhir/questionnaire-item-control",
              "code" : "radio-button",
              "display" : "Radio Button"
            }]
          }
        }],
        "linkId" : "o_3",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "22298006",
          "display" : "Myocardial infarction"
        }],
        "text" : "Wurde ein Herzinfarkt diagnostiziert?",
        "type" : "choice",
        "repeats" : false,
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
            "code" : "Y",
            "display" : "Yes"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
            "code" : "N",
            "display" : "No"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
            "code" : "ASKU",
            "display" : "asked but unknown"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
            "code" : "NI",
            "display" : "No Information"
          },
          "initialSelected" : true
        }],
        "item" : [{
          "linkId" : "o_3a",
          "code" : [{
            "system" : "http://snomed.info/sct",
            "code" : "432213005",
            "display" : "Date of diagnosis"
          }],
          "text" : "Wann wurde der Herzinfarkt diagnostiziert?",
          "type" : "date",
          "enableWhen" : [{
            "question" : "o_3",
            "operator" : "=",
            "answerCoding" : {
              "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
              "code" : "Y",
              "display" : "Yes"
            }
          }],
          "enableBehavior" : "all",
          "repeats" : true
        }]
      }]
    },
    {
      "linkId" : "650578614260",
      "text" : "Schlaganfall oder Hirnblutung",
      "type" : "group",
      "repeats" : false,
      "item" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "http://hl7.org/fhir/questionnaire-item-control",
              "code" : "radio-button",
              "display" : "Radio Button"
            }]
          }
        }],
        "linkId" : "o_4",
        "text" : "Wurde ein Schlaganfall oder Erkrankung der Hirngefäße diagnostiziert?",
        "type" : "choice",
        "repeats" : false,
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
            "code" : "Y",
            "display" : "Yes"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
            "code" : "N",
            "display" : "No"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
            "code" : "ASKU",
            "display" : "asked but unknown"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
            "code" : "NI",
            "display" : "No Information"
          },
          "initialSelected" : true
        }],
        "item" : [{
          "linkId" : "o_4a",
          "code" : [{
            "system" : "http://snomed.info/sct",
            "code" : "432213005",
            "display" : "Date of diagnosis"
          }],
          "text" : "Wann wurde der Schlaganfall / die Erkrankung der Hirngefäße diagnostiziert?",
          "type" : "date",
          "enableWhen" : [{
            "question" : "o_4",
            "operator" : "=",
            "answerCoding" : {
              "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
              "code" : "Y",
              "display" : "Yes"
            }
          }],
          "enableBehavior" : "all",
          "repeats" : true,
          "item" : [{
            "extension" : [{
              "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
              "valueCodeableConcept" : {
                "coding" : [{
                  "system" : "http://hl7.org/fhir/questionnaire-item-control",
                  "code" : "drop-down",
                  "display" : "Drop down"
                }]
              }
            }],
            "linkId" : "o_4b",
            "text" : "Wissen Sie welche Art des Schlaganfalls diagnostiziert wurde?",
            "type" : "choice",
            "enableWhen" : [{
              "question" : "o_4",
              "operator" : "=",
              "answerCoding" : {
                "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
                "code" : "Y",
                "display" : "Yes"
              }
            }],
            "enableBehavior" : "all",
            "repeats" : false,
            "answerOption" : [{
              "valueCoding" : {
                "system" : "http://snomed.info/sct",
                "code" : "422504002",
                "display" : "Ischemic stroke"
              }
            },
            {
              "valueCoding" : {
                "system" : "http://snomed.info/sct",
                "code" : "274100004",
                "display" : "Cerebral hemorrhage"
              }
            },
            {
              "valueCoding" : {
                "system" : "http://snomed.info/sct",
                "code" : "21454007",
                "display" : "Subarachnoid hemorrhage"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-acribis-questionnaire-answer",
                "code" : "cerebral_hemorrhage_intracerebral_or_subarachnoid",
                "display" : "Hirnblutung (intrazerebral oder subarachnoidal)"
              }
            },
            {
              "valueCoding" : {
                "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
                "code" : "ASKU",
                "display" : "asked but unknown"
              }
            },
            {
              "valueCoding" : {
                "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
                "code" : "NI",
                "display" : "No Information"
              },
              "initialSelected" : true
            }]
          }]
        }]
      }]
    },
    {
      "linkId" : "881254946120",
      "text" : "Starke Blutung",
      "type" : "group",
      "repeats" : false,
      "item" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "http://hl7.org/fhir/questionnaire-item-control",
              "code" : "radio-button",
              "display" : "Radio Button"
            }]
          }
        }],
        "linkId" : "o_5",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "64572001:{116676008=50960005,47429007=131148009,42752001=789750003,246112005=24484000}",
          "display" : "64572001|Disease|:{116676008|Associated morphology|=50960005|Hemorrhage|,47429007|Associated with|=131148009|Bleeding|,42752001|Due to|=789750003|Spontaneous event|,246112005|Severity|=24484000|Severe|}"
        }],
        "text" : "Trat eine starke spontane Blutung (Starke Blutung, siehe Infobox) auf, die diagnostiziert wurde und ärztlch behandelt werden musste?",
        "type" : "choice",
        "repeats" : false,
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
            "code" : "Y",
            "display" : "Yes"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
            "code" : "N",
            "display" : "No"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
            "code" : "ASKU",
            "display" : "asked but unknown"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
            "code" : "NI",
            "display" : "No Information"
          },
          "initialSelected" : true
        }],
        "item" : [{
          "linkId" : "o_5a",
          "code" : [{
            "system" : "http://snomed.info/sct",
            "code" : "432213005",
            "display" : "Date of diagnosis"
          }],
          "text" : "Wann trat(en) diese starke Blutung(en) auf?",
          "type" : "date",
          "enableWhen" : [{
            "question" : "o_5",
            "operator" : "=",
            "answerCoding" : {
              "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
              "code" : "Y",
              "display" : "Yes"
            }
          }],
          "enableBehavior" : "all",
          "repeats" : true
        }]
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "http://hl7.org/fhir/questionnaire-item-control",
              "code" : "help",
              "display" : "Help-Button"
            }],
            "text" : "Help-Button"
          }
        }],
        "linkId" : "881254946120_helpText",
        "text" : "Gemeint sind im Folgenden innere Blutung, oder spontane äussere Blutungen, die ohne (starke) äusserliche Krafteinwirkung ausgelöst worden sind, wie starkes Nasenbluten oder Magen-Darmblutung beispielsweise.",
        "type" : "display"
      }]
    },
    {
      "linkId" : "245973210113",
      "text" : "TIA",
      "type" : "group",
      "repeats" : false,
      "item" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "http://hl7.org/fhir/questionnaire-item-control",
              "code" : "radio-button",
              "display" : "Radio Button"
            }]
          }
        }],
        "linkId" : "o_6",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "266257000",
          "display" : "Transient ischemic attack"
        }],
        "text" : "Wurde eine Transiente Ischämische Attacke (TIA, siehe Infobox) diagnostiziert?",
        "type" : "choice",
        "repeats" : false,
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
            "code" : "Y",
            "display" : "Yes"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
            "code" : "N",
            "display" : "No"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
            "code" : "ASKU",
            "display" : "asked but unknown"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
            "code" : "NI",
            "display" : "No Information"
          },
          "initialSelected" : true
        }],
        "item" : [{
          "linkId" : "o_6a",
          "code" : [{
            "system" : "http://snomed.info/sct",
            "code" : "432213005",
            "display" : "Date of diagnosis"
          }],
          "text" : "Wann wurde die Transiente Ischämische Attacke (TIA) diagnostiziert?",
          "type" : "date",
          "enableWhen" : [{
            "question" : "o_6",
            "operator" : "=",
            "answerCoding" : {
              "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
              "code" : "Y",
              "display" : "Yes"
            }
          }],
          "enableBehavior" : "all",
          "repeats" : true
        }]
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "http://hl7.org/fhir/questionnaire-item-control",
              "code" : "help",
              "display" : "Help-Button"
            }],
            "text" : "Help-Button"
          }
        }],
        "linkId" : "245973210113_helpText",
        "text" : "Transiente Ischämische Attacke oder TIA ist eine Art \"Vorstufe zu einem Schlaganfall\" bzw. \"Mini\"-Schlaganfall genannte Unterversorgng des Gehirns bei dem es zur zeitweisen Verlust von Sprache, Lähmungen oder auch sonstige Symptome von Schlaganfällen kommen, die sich jedoch innerhalb eines Tages und meist vollkommen zurückbilden.",
        "type" : "display"
      }]
    },
    {
      "linkId" : "826742623985",
      "text" : "Vorhofflimmern",
      "type" : "group",
      "repeats" : false,
      "item" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "http://hl7.org/fhir/questionnaire-item-control",
              "code" : "radio-button",
              "display" : "Radio Button"
            }]
          }
        }],
        "linkId" : "o_7",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "49436004",
          "display" : "Atrial fibrillation"
        }],
        "text" : "Wurde ein Vorhofflimmern (dauerhaft oder anfallsartig) diagnostiziert?",
        "type" : "choice",
        "repeats" : false,
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
            "code" : "Y",
            "display" : "Yes"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
            "code" : "N",
            "display" : "No"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
            "code" : "ASKU",
            "display" : "asked but unknown"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
            "code" : "NI",
            "display" : "No Information"
          },
          "initialSelected" : true
        }],
        "item" : [{
          "linkId" : "o_7a",
          "code" : [{
            "system" : "http://snomed.info/sct",
            "code" : "432213005",
            "display" : "Date of diagnosis"
          }],
          "text" : "Wann wurde das Vorhofflimmern diagnostiziert?",
          "type" : "date",
          "enableWhen" : [{
            "question" : "o_7",
            "operator" : "=",
            "answerCoding" : {
              "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
              "code" : "Y",
              "display" : "Yes"
            }
          }],
          "enableBehavior" : "all",
          "repeats" : true
        }]
      }]
    },
    {
      "linkId" : "944193442011",
      "text" : "Herzinsuffizienz",
      "type" : "group",
      "repeats" : false,
      "item" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "http://hl7.org/fhir/questionnaire-item-control",
              "code" : "radio-button",
              "display" : "Radio Button"
            }]
          }
        }],
        "linkId" : "o_8",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "48447003",
          "display" : "Chronic heart failure"
        }],
        "text" : "Wurde eine Herzinsuffizienz (Herzschwäche, siehe Infobox) diagnostiziert?",
        "type" : "choice",
        "repeats" : false,
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
            "code" : "Y",
            "display" : "Yes"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
            "code" : "N",
            "display" : "No"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
            "code" : "ASKU",
            "display" : "asked but unknown"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
            "code" : "NI",
            "display" : "No Information"
          },
          "initialSelected" : true
        }],
        "item" : [{
          "linkId" : "o_8a",
          "code" : [{
            "system" : "http://snomed.info/sct",
            "code" : "432213005",
            "display" : "Date of diagnosis"
          }],
          "text" : "Wann wurde die Herzinsuffizienz diagnostiziert?",
          "type" : "date",
          "enableWhen" : [{
            "question" : "o_8",
            "operator" : "=",
            "answerCoding" : {
              "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
              "code" : "Y",
              "display" : "Yes"
            }
          }],
          "enableBehavior" : "all",
          "repeats" : true
        }]
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "http://hl7.org/fhir/questionnaire-item-control",
              "code" : "radio-button",
              "display" : "Radio Button"
            }]
          }
        }],
        "linkId" : "o_9",
        "text" : "Wurden der Proband/die Probandin aufgrund einer Verschlechterung Ihrer Herzinsuffizienz (siehe Infobox) im letzten Jahr im Krankenhaus behandelt?",
        "type" : "choice",
        "repeats" : false,
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
            "code" : "Y",
            "display" : "Yes"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
            "code" : "N",
            "display" : "No"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
            "code" : "ASKU",
            "display" : "asked but unknown"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
            "code" : "NI",
            "display" : "No Information"
          },
          "initialSelected" : true
        }],
        "item" : [{
          "linkId" : "o_9a",
          "code" : [{
            "system" : "http://snomed.info/sct",
            "code" : "298060002",
            "display" : "Number of admissions"
          }],
          "text" : "Wie häufig war aus diesem Grund im letzten Jahr im Krankenhaus notwendig?",
          "type" : "integer",
          "enableWhen" : [{
            "question" : "o_9",
            "operator" : "=",
            "answerCoding" : {
              "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
              "code" : "Y",
              "display" : "Yes"
            }
          }],
          "enableBehavior" : "all",
          "repeats" : false
        },
        {
          "linkId" : "o_9b",
          "code" : [{
            "system" : "http://snomed.info/sct",
            "code" : "399423000",
            "display" : "Date of admission"
          }],
          "text" : "Wann kam es wegen eine Verschlechterung der Herzinsuffizienz zu einer stationären Aufnahme im Krankenhaus?",
          "type" : "date",
          "enableWhen" : [{
            "question" : "o_9",
            "operator" : "=",
            "answerCoding" : {
              "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
              "code" : "Y",
              "display" : "Yes"
            }
          }],
          "enableBehavior" : "all",
          "repeats" : true
        }]
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "http://hl7.org/fhir/questionnaire-item-control",
              "code" : "help",
              "display" : "Help-Button"
            }],
            "text" : "Help-Button"
          }
        }],
        "linkId" : "944193442011_helpText",
        "text" : "Bei einer Herzinsuffizienz -die auch Herzschwäche genannt wird- hat das Herz nicht mehr genügend Kraft ausreichend Blut durch den Körper zu pumpen und es kommt zu einer zunehmend verminderten körperlichen Belastbarkeit, vermehrte Luftnot oder Einlagerung von Flüssigkeit (z.B. in den Beinen). Das kann zu behandlungsbedürftigen Zuständen führen, die mit Krankenhausaufenthalten verbunden sind.",
        "type" : "display"
      }]
    },
    {
      "linkId" : "442060932628",
      "text" : "Weitere Herz-Kreislauf-Erkrankung",
      "type" : "group",
      "repeats" : false,
      "item" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "http://hl7.org/fhir/questionnaire-item-control",
              "code" : "radio-button",
              "display" : "Radio Button"
            }]
          }
        }],
        "linkId" : "o_10",
        "text" : "Wurden weitere Herz-Kreislauf-Erkrankungen diagnostiziert?",
        "type" : "choice",
        "repeats" : false,
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
            "code" : "Y",
            "display" : "Yes"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
            "code" : "N",
            "display" : "No"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
            "code" : "ASKU",
            "display" : "asked but unknown"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
            "code" : "NI",
            "display" : "No Information"
          },
          "initialSelected" : true
        }],
        "item" : [{
          "extension" : [{
            "url" : "http://hl7.org/fhir/StructureDefinition/preferredTerminologyServer",
            "valueUrl" : "https://snowstorm.ihtsdotools.org/fhir"
          },
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
            "valueCodeableConcept" : {
              "coding" : [{
                "system" : "http://hl7.org/fhir/questionnaire-item-control",
                "code" : "autocomplete",
                "display" : "Auto-complete"
              }]
            }
          }],
          "linkId" : "o_10a",
          "code" : [{
            "system" : "http://snomed.info/sct",
            "code" : "439401001",
            "display" : "Diagnosis"
          }],
          "text" : "Um welche weitere Herz-Kreislauf-Erkrankung handelt es sich?",
          "type" : "open-choice",
          "enableWhen" : [{
            "question" : "o_10",
            "operator" : "=",
            "answerCoding" : {
              "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
              "code" : "Y",
              "display" : "Yes"
            }
          }],
          "enableBehavior" : "all",
          "repeats" : true,
          "answerValueSet" : "http://snomed.info/sct?fhir_vs=isa/49601007",
          "item" : [{
            "linkId" : "o_10b",
            "code" : [{
              "system" : "http://snomed.info/sct",
              "code" : "432213005",
              "display" : "Date of diagnosis"
            }],
            "text" : "Wann wurde diese Erkrankung diagnostiziert?",
            "type" : "date",
            "enableWhen" : [{
              "question" : "o_10a",
              "operator" : "exists",
              "answerBoolean" : true
            }],
            "enableBehavior" : "all",
            "repeats" : false
          },
          {
            "extension" : [{
              "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
              "valueCodeableConcept" : {
                "coding" : [{
                  "system" : "http://hl7.org/fhir/questionnaire-item-control",
                  "code" : "help",
                  "display" : "Help-Button"
                }],
                "text" : "Help-Button"
              }
            }],
            "linkId" : "o_10a_helpText",
            "text" : "Angabe aus SNOMED-CT (Unterelemente von \"Disorder of cardiovascular system (disorder)\")",
            "type" : "display"
          }]
        }]
      }]
    }]
  },
  {
    "linkId" : "101636668393",
    "text" : "Allgemeine Angaben 2",
    "type" : "group",
    "repeats" : false,
    "item" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://hl7.org/fhir/questionnaire-item-control",
            "code" : "drop-down",
            "display" : "Drop down"
          }]
        }
      }],
      "linkId" : "o_11",
      "text" : "Wie wurde das Follow-Up erhoben?",
      "type" : "choice",
      "repeats" : false,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationMode",
          "code" : "EMAILWRIT",
          "display" : "email"
        }
      },
      {
        "valueCoding" : {
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationMode",
          "code" : "MAILWRIT",
          "display" : "mail"
        }
      },
      {
        "valueCoding" : {
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationMode",
          "code" : "PHONE",
          "display" : "telephone"
        }
      },
      {
        "valueCoding" : {
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationMode",
          "code" : "FACE",
          "display" : "face-to-face"
        }
      },
      {
        "valueCoding" : {
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationMode",
          "code" : "ONLINEWRIT",
          "display" : "online written"
        }
      },
      {
        "valueCoding" : {
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
          "code" : "NI",
          "display" : "No Information"
        },
        "initialSelected" : true
      }]
    }]
  },
  {
    "linkId" : "504755903209",
    "text" : "Im Kontext der Follow-Up-Befragung der Acribis-Studie ist vorgesehen, dass neben den in diesem Fragebogen enthaltenen Follow-Up-Fragen auch Quality-of-Life-(QoL)-Fragebögen befüllt werden. Konkret handelt es sich um PROMIS-29 und EQ-5D-5L.",
    "type" : "display"
  }]
}

```
