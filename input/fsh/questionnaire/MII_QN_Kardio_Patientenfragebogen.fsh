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