Instance: acribis-study-followup
InstanceOf: Questionnaire
Usage: #definition

// ========================================================
// Metadata
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/Questionnaire/acribis-study-followup" // Eindeutige URL (canonical); sollte stabil bleiben
//* identifier.system = "http://example.org/questionnaires"              // Optional: System fuer Identifier
//* identifier.value = "followup-001"                                    // Optional: Interne ID
* insert Version
* name = "Acribis_Study_FollowUp"                                        // Technischer Name (PascalCase empfohlen)
* title = "Acribis-Studie Follow-Up Fragebogen"                          // Titel zur Anzeige
* status = #draft                                                        // #draft | #active | #retired | #unknown
* experimental = true                                                    // true = fuer experimentellen Gebrauch, sonst false
* date = "2025-06-18"  
* insert Instance_Publisher
* description = "Ein Follow-Up-Fragebogen im Rahmen der Acribis-Studie." // Beschreibung
* useContext[0].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[0].valueCodeableConcept = http://snomed.info/sct#734163000 "Clinical trial (procedure)" // Optionaler Anwendungskontext
* subjectType[0] = #Patient                                              // #Patient | #Practitioner | #Group | #Location

// ========================================================
// Item-Template
//* item[0].linkId = "q1"
//* item[0].text = "Wie heißen Sie?"
//* item[0].type = #boolean             // Moegliche Typen: group, display, boolean, decimal, integer, date, dateTime, time, string, text, url, choice, open-choice, attachment, reference, quantity
//* item[0].required = true             // true oder false
//* item[0].repeats = false             // true = kann mehrfach beantwortet werden

// Dynamic Behaviour with "enableWhen"
//* item[1].linkId = "q2"
//* item[1].text = "Welche Haustiere haben Sie?"
//* item[1].type = #string
//* item[1].enableWhen[0].question = "q1"
//* item[1].enableWhen[0].operator #=          // Weitere Operatoren: !=, >, <, >=, <=, exists
//* item[1].enableWhen[0].answerBoolean = true
//* item[1].enableBehavior = #all                 // Moegliche Werte: all (alle Bedingungen erfuellt), any (mind. eine erfuellt)

// Indexierung mit item[+] und item[=] ist moeglich, verhindert allerdings refernzierung mittels subitems, da hierfuer feste indizes notwendig sind -> item[0].item[+]

// Mögliche Typen: 
// group, display, boolean, decimal, integer, date, dateTime, time, string, text, url, choice, open-choice, attachment, reference, quantity

// ========================================================
// Items (nested)

// TODO Codierte Antworten!!!!!!!!!! ja/nein/unbekannt mit FHIR VS bspw.

// TODO Alle Items die Typ #string abfragen kritisch hinterfragen.

// Patienten-ID
* item[0].linkId = "patient-id"
* item[=].prefix = "Identifier"
* item[=].text = "Follow-Up Patienten-ID"
* item[=].type = #string

// Wer fuellt den Fragebogen aus?
* item[+].linkId = "who-filled"
* item[=].prefix = "Angaben zum Ausfüllenden"
* item[=].text = "Wer füllt den Fragebogen aus?"
* item[=].type = #choice
* item[=].answerOption[0].valueCoding = $sct#116154003 "Patient"  //Patient (person)
* item[=].answerOption[+].valueCoding = $sct#2187007 "Relative" //Relative (person)
* item[=].answerOption[+].valueCoding = $sct#405279007 "Attending physician" //Attending physician (occupation)
* item[=].answerOption[+].valueCoding = $sct#74964007 "Other" //Andere Person

// Andere Person (nur wenn "Andere Person" gewählt)
* item[=].item.linkId = "who-filled-other"
* item[=].prefix = "Angaben zur Kontaktaufnahme"
* item[=].item.text = "Andere Person"
* item[=].item.type = #string
* item[=].item.enableWhen[0].question = "who-filled"
* item[=].item.enableWhen[=].operator = #=
* item[=].item.enableWhen[=].answerCoding = $sct#74964007 //Other/Andere Person

// Telefonische Kontaktaufnahme (Choice mit Subitem)
* item[+].linkId = "phone-contact"
* item[=].prefix = "Angaben zur Kontaktaufnahme"
* item[=].text = "Telefonat mit"
* item[=].type = #choice
* item[=].answerOption[0].valueCoding = $sct#116154003 "Patient"  //Patient (person)
* item[=].answerOption[+].valueCoding = $sct#2187007 "Relative" //Relative (person)
* item[=].answerOption[+].valueCoding = $sct#405279007 "Attending physician" //Attending physician (occupation)
* item[=].answerOption[+].valueCoding = $sct#74964007 "Other" //Andere Person

// Unterelement (Subitem) von item[3], nur wenn "Andere Person" gewählt wird
* item[=].item.linkId = "phone-contact-other"
* item[=].prefix = "Angaben zur Kontaktaufnahme"
* item[=].item.text = "Andere Person (Telefonat)"
* item[=].item.type = #string
* item[=].item.enableWhen.question = "phone-contact"
* item[=].item.enableWhen.operator = #=
* item[=].item.enableWhen.answerCoding = $sct#74964007 "Other" //Andere Person
* item[+].linkId = "executing-staff"
* item[=].text = "Durchführender Mitarbeiter"
* item[=].type = #string //Referenz auf Person denkbar: * item[4].answerReference.targetProfile = ["Patient", "Practitioner", "RelatedPerson"]
* item[+].linkId = "recording-date"
* item[=].text = "Datum der Datenaufnahme (DD.MM.YYYY)"
* item[=].type = #date

// Telefonate
* item[+].linkId = "calls"
* item[=].prefix = "Angaben zur Kontaktaufnahme"
* item[=].text = "Telefonat"
* item[=].type = #group
* item[=].repeats = true
* item[=].item[0].linkId = "call-date"
* item[=].item[=].text = "Datum"
* item[=].item[=].type = #date
* item[=].item[+].linkId = "call-time"
* item[=].item[=].text = "Uhrzeit"
* item[=].item[=].type = #time
* item[=].item[+].linkId = "call-success"
* item[=].item[=].text = "Erfolgreich?"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueCoding = $v2-0532#Y "Yes"
* item[=].item[=].answerOption[+].valueCoding = $v2-0532#N "No"

// Kontaktaufnahme Hausarzt
* item[+].linkId = "gp-contact"
* item[=].prefix = "Kontaktaufnahme Hausarzt"
* item[=].text = "Kontaktaufnahme Hausarzt"
* item[=].type = #boolean

* item[+].linkId = "gp-contact-date"
* item[=].prefix = "Kontaktaufnahme Hausarzt"
* item[=].text = "Datum der Kontaktaufnahme"
* item[=].type = #date
* item[=].enableWhen.question = "gp-contact"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerBoolean = true

// Tod
* item[+].linkId = "death-status"
* item[=].prefix = "Angaben zum Tod"
* item[=].text = "Tod"
* item[=].type = #choice
* item[=].answerOption[0].valueCoding = $v2-0532#Y "Yes"
* item[=].answerOption[+].valueCoding = $v2-0532#N "No"
* item[=].answerOption[+].valueCoding = $v2-0532#UNK "unknown"
* item[=].answerOption[+].valueCoding = $v2-0532#NASK "not asked"

// Wenn ja, Datum des Todes
* item[+].linkId = "death-date"
* item[=].prefix = "Angaben zum Tod"
* item[=].text = "Datum des Todes"
* item[=].type = #choice
* item[=].answerOption[0].valueCoding = $v2-0532#UNK "unknown"
* item[=].answerOption[+].valueCoding = $v2-0532#NASK "not asked"
* item[=].answerOption[+].valueCoding = $v2-0532#Y "Yes"
* item[=].enableWhen.question = "death-status"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerCoding.code = $v2-0532#Y "Yes"

// Subitem fuer Datum im Format MM.YYYY (optional sichtbar bei Auswahl)
* item[=].item.linkId = "death-date-mm-yyyy"
* item[=].prefix = "Angaben zum Tod"
* item[=].item.text = "MM.YYYY"
* item[=].item.type = #date //#string    //TODO? Pruefen -> Unvollständiges Datum soll moeglich sein in FHIR! Alternativ: Recherche! Vllt. eigene StructureDefinition fuer approximateDate oder Regex angeben
* item[=].item.enableWhen.question = "death-date"
* item[=].item.enableWhen.operator = #=
* item[=].item.enableWhen.answerCoding = $v2-0532#Y "Yes"

// Wenn ja, Todesursache
* item[+].linkId = "cause-of-death"
* item[=].prefix = "Angaben zum Tod"
* item[=].text = "Todesursache"
* item[=].type = #choice
* item[=].answerOption[0].valueCoding = $acribis-follow-up#cardiovascular-cause "kardiovaskulär"
* item[=].answerOption[+].valueCoding = $acribis-follow-up#no-cardiovascular-cause "nicht kardiovaskulär"
* item[=].answerOption[+].valueCoding = $v2-0532#UNK "unknown"
* item[=].answerOption[+].valueCoding = $v2-0532#NASK "not asked"
* item[=].enableWhen.question = "death-status"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerCoding = $v2-0532#Y "Yes"

// Item 11: kardiovaskuläre Todesursache (Hauptfrage)               //TODO Codes pruefen
* item[+].linkId = "cardiovascular-death-detail"
* item[=].prefix = "Angaben zum Tod"
* item[=].text = "Bei kardiovaskulärer Todesursache"
* item[=].type = #choice
* item[=].answerOption[0].valueCoding = $sct#22298006 "Myocardial infarction" //  Myocardial infarction (disorder) "Herzinfarkt"
* item[=].answerOption[+].valueCoding = $sct#230690007 "Cerebrovascular accident" //"Schlaganfall" // Stroke = Cerebrovascular accident disorder
* item[=].answerOption[+].valueCoding = $acribis-follow-up#other-cardiovascular-cause
* item[=].answerOption[+].valueCoding = $v2-0532#UNK "unknown"
* item[=].answerOption[+].valueCoding = $v2-0532#NASK "not asked"
* item[=].enableWhen.question = "cause-of-death"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerCoding = $acribis-follow-up#cardiovascular-cause

// Item 12: Gruppe, nur sichtbar wenn "Schlaganfall" ausgewählt in item[11]
* item[+].linkId = "cardiovascular-death-stroke-details"
* item[=].prefix = "Angaben zum Tod"
* item[=].text = "Details zum Schlaganfall"
* item[=].type = #group
* item[=].enableWhen.question = "cardiovascular-death-detail"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerCoding = $sct#230690007

// Subitems in Gruppe item[12] – Spezifizierung des Schlaganfalls           //TODO Kodieren
* item[=].item[0].linkId = "cv-death-ischemic-stroke"
* item[=].item[=].prefix = "Angaben zum Tod"
* item[=].item[=].text = "Ischämischer Schlaganfall"
* item[=].item[=].type = #boolean
* item[=].item[+].linkId = "cv-death-intracerebral-bleeding"
* item[=].item[=].text = "Intrazerebrale Blutung"
* item[=].item[=].type = #boolean
* item[=].item[+].linkId = "cv-death-subarachnoid-bleeding"
* item[=].item[=].text = "Subarachnoidalblutung"
* item[=].item[=].type = #boolean 
// TODO Warum hier fuer Item 12 keine Sub-Auswahl "unbekannt", wenn die bei Item "cv-event-ischemic-stroke" vorgesehen ist?

// Wenn nein, sind kardiovaskuläre Ereignisse aufgetreten?
* item[+].linkId = "cv-events-if-not-dead"
* item[=].prefix = "Angaben zu kardiovaskulären Ereignissen"
* item[=].text = "Wenn nein, sind kardiovaskuläre Ereignisse aufgetreten?"
* item[=].type = #choice
* item[=].answerOption[0].valueCoding = $v2-0532#Y "Yes"
* item[=].answerOption[+].valueCoding = $v2-0532#N "No"
* item[=].answerOption[+].valueCoding = $v2-0532#UNK "unknown"
* item[=].answerOption[+].valueCoding = $v2-0532#NASK "not asked"

// Ebene 1: Sichtbar nur bei Antwort "Y" Yes
* item[+].linkId = "cv-event-heart-attack"
* item[=].prefix = "Angaben zu kardiovaskulären Ereignissen"
* item[=].text = "Herzinfarkt"
* item[=].type = #boolean
* item[=].enableWhen.question = "cv-events-if-not-dead"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerCoding = $v2-0532#Y "Yes"

// Ebene 1: Schlaganfall ausgewählt?
* item[+].linkId = "cv-event-stroke"
* item[=].prefix = "Angaben zu kardiovaskulären Ereignissen"
* item[=].text = "Schlaganfall"
* item[=].type = #boolean      // TODO als choice anlegen?
* item[=].enableWhen.question = "cv-events-if-not-dead"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerCoding = $v2-0532#Y "Yes"

// Ebene 2: Unteritems, nur wenn Schlaganfall ausgewählt wurde (als Subitems von item 14)
* item[=].item[0].linkId = "cv-event-ischemic-stroke"
* item[=].item[=].prefix = "Angaben zu kardiovaskulären Ereignissen"
* item[=].item[=].text = "Ischämischer Schlaganfall"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "cv-event-stroke"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true

* item[=].item[+].linkId = "cv-event-icb"
* item[=].item[=].prefix = "Angaben zu kardiovaskulären Ereignissen"
* item[=].item[=].text = "Intrazerebrale Blutung"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "cv-event-stroke"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true

* item[=].item[+].linkId = "cv-event-sab"
* item[=].item[=].prefix = "Angaben zu kardiovaskulären Ereignissen"
* item[=].item[=].text = "Subarachnoidalblutung"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "cv-event-stroke"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true

* item[=].item[+].linkId = "cv-event-unknown"
* item[=].item[=].prefix = "Angaben zu kardiovaskulären Ereignissen"
* item[=].item[=].text = "unbekannt"               // TODO kein boolean sondern codiert?
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "cv-event-stroke"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true

// Weiter auf Ebene 1
* item[+].linkId = "cv-event-tia"
* item[=].prefix = "Angaben zu kardiovaskulären Ereignissen"
* item[=].text = "Transiente Ischämische Attacke"
* item[=].type = #boolean
* item[=].enableWhen.question = "cv-events-if-not-dead"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerCoding = $v2-0532#Y "Yes"

// Abfrage von string, wenn "ja" und "Blutungsereignis"
* item[+].linkId = "cv-event-bleeding-other"
* item[=].prefix = "Angaben zu kardiovaskulären Ereignissen"
* item[=].text = "Blutungsereignis (außer Intrazerebrale Blutung/Subarachnoidblutung)"   // Typo: Hier schließende Klammer ")" hinzugefuegt
* item[=].type = #boolean
* item[=].enableWhen[0].question = "cv-events-if-not-dead"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = $v2-0532#Y "Yes"

* item[+].linkId = "cv-event-bleeding-other-eingabe"
* item[=].prefix = "Angaben zu kardiovaskulären Ereignissen"
* item[=].text = "Blutungsereignis (außer Intrazerebrale Blutung/Subarachnoidblutung):"   // Typo: Hier schließende Klammer ")" hinzugefuegt
* item[=].type = #string
* item[=].enableWhen[+].question = "cv-event-bleeding-other"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerBoolean = true
* item[=].enableBehavior = #all

// Abfrage von string, wenn "ja" und "Anderes kardiovaskuläres Ereignis"
* item[+].linkId = "cv-event-other"
* item[=].prefix = "Angaben zu kardiovaskulären Ereignissen"
* item[=].text = "Anderes kardiovaskuläres Ereignis"
* item[=].type = #boolean
* item[=].enableWhen[0].question = "cv-events-if-not-dead"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = $v2-0532#Y "Yes"

* item[+].linkId = "cv-event-other-eingabe"
* item[=].prefix = "Angaben zu kardiovaskulären Ereignissen"
* item[=].text = "Anderes kardiovaskuläres Ereignis:"
* item[=].type = #string
* item[=].enableWhen[+].question = "cv-event-other"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerBoolean = true
* item[=].enableBehavior = #all

// ========================================================
// Weitere Befragung ab Seite 4 des Fragebogens (PDF-Version mit Titelblatt)

// Wurde seit Ihrem Krankenhausaufenthalt vor einem Jahr eine der folgenden Krankheiten bei Ihnen diagnostiziert?

//* item[=].prefix = "Angaben zu Diagnosen seit Studieneinschluss"

// TODO Noch 3 weitere Seiten Formular umsetzen
