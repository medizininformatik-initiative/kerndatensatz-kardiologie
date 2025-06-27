RuleSet: Instance_Publisher
* publisher = "Medizininformatik Initiative"
* contact[0].telecom[0].system = #url
* contact[0].telecom[0].value = "https://www.medizininformatik-initiative.de"

RuleSet: Publisher
* ^publisher = "Medizininformatik Initiative"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.medizininformatik-initiative.de"