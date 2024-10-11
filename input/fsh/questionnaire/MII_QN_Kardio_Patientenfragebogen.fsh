Instance: kardio-patientenfragebogen
InstanceOf: Questionnaire
Usage: #definition

* name = "Questionnaire1"
* title = "Questionnaire1"
* status = #draft
* date = "2024-10-07"
* subjectType = #Patient //ref

// types: #integer, #string, #date, #time, #quantity, #boolean, #choice

// Frage 1: Hat der Patient Bluthochdruck?
* item[+]
  * linkId = "Q1"
  * text = "Leiden Sie an Bluthochdruck?"
  * type = #boolean
  * required = false
  * repeats = false

* item[+].linkId = "q1"
* item[=].text = "Hatten Sie jemals Herzprobleme oder eine Herzerkrankung?"
* item[=].type = #choice
* item[=].required = true
* item[=].answerOption[+].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v2-0136"
* item[=].answerOption[=].valueCoding.code = #Y
* item[=].answerOption[=].valueCoding.display = "Ja"
* item[=].answerOption[+].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v2-0136"
* item[=].answerOption[=].valueCoding.code = #N
* item[=].answerOption[=].valueCoding.display = "Nein"
 
* item[+].linkId = "q2"
* item[=].text = "Haben Sie in Ihrer Familie eine Vorgeschichte von Herzinfarkten?"
* item[=].type = #choice
* item[=].required = true
* item[=].answerOption[+].valueCoding.code = #yes
* item[=].answerOption[=].valueCoding.display = "Ja"
* item[=].answerOption[+].valueCoding.code = #no
* item[=].answerOption[=].valueCoding.display = "Nein"

* item[+].linkId = "q3"
* item[=].text = "Wie oft erleben Sie Schmerzen in der Brust?"
* item[=].type = #choice
* item[=].answerOption[+].valueCoding.code = #none
* item[=].answerOption[=].valueCoding.display = "Nie"
* item[=].answerOption[+].valueCoding.code = #rarely
* item[=].answerOption[=].valueCoding.display = "Selten"
* item[=].answerOption[+].valueCoding.code = #sometimes
* item[=].answerOption[=].valueCoding.display = "Manchmal"
* item[=].answerOption[+].valueCoding.code = #frequently
* item[=].answerOption[=].valueCoding.display = "Häufig"

* item[+].linkId = "q4"
* item[=].text = "Rauchen Sie?"
* item[=].type = #choice
* item[=].answerOption[+].valueCoding.code = #yes
* item[=].answerOption[=].valueCoding.display = "Ja"
* item[=].answerOption[+].valueCoding.code = #no
* item[=].answerOption[=].valueCoding.display = "Nein"

* item[+].linkId = "q5"
* item[=].text = "Wie alt sind Sie?"
* item[=].type = #integer
* item[=].required = true

* item[+].linkId = "q6"
* item[=].text = "Haben Sie Medikamente für Ihr Herz eingenommen? Wenn ja, welche?"
* item[=].type = #text
// EnableWhen: Frage q6 wird nur angezeigt, wenn Frage q1 mit "Ja" beantwortet wurde
* item[=].enableWhen[+].question = "q1"
* item[=].enableWhen[=].operator = #equals
* item[=].enableWhen[=].answerCoding.system = "http://terminology.hl7.org/CodeSystem/v2-0136"
* item[=].enableWhen[=].answerCoding.code = #Y

* item[+].linkId = "q7"
* item[=].text = "Wie oft treiben Sie pro Woche Sport?"
* item[=].type = #integer