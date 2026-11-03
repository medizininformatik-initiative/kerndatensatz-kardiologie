Invariant: mii-inv-kardio-dataabsentreason
Description: "Ist kein value[x] angegeben, muss ein dataAbsentReason angegeben werden."
* severity = #error
* expression = "value.exists().not() implies dataAbsentReason.exists()"

// Derzeit ungenutzt: vorbereitet für component[rauchzeitraum] in MII_PR_Kardio_Observation_Rauchen (dort aktuell auskommentiert)
Invariant: rauchzeitraum-start-vor-ende
Description: "Das Enddatum des Rauchzeitraums darf nicht vor dem Startdatum liegen."
Severity: #error
Expression: "start.empty() or end.empty() or (start <= end)"

Invariant: mii-kardio-pos-int
Description: "Die Anzahl der Krankenhausaufenthalte kann nicht negativ sein. Wenn ein Integer übermittelt wird, muss dieser größer oder gleich 0 sein."
Severity: #error
// $this = der Integer-Wert selbst, da die Invariante direkt an valueInteger gebunden ist
// (MII_PR_Kardio_Anzahl_KH_Aufenthalte_wg_HF: "* valueInteger obeys mii-kardio-pos-int")
Expression: "$this >= 0"