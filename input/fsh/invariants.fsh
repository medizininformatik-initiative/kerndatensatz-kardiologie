Invariant: mii-inv-kardio-dataabsentreason
Description: "If there is no Observation.value, a dataAbsentReason must be given."
* severity = #error
* expression = "value.exists().not() implies dataAbsentReason.exists()"

Invariant: rauchzeitraum-start-vor-ende
Description: "Das Enddatum des Rauchzeitraums darf nicht vor dem Startdatum liegen."
Severity: #error
Expression: "start.empty() or end.empty() or (start <= end)"

Invariant: mii-kardio-pos-int
Description: "Die Anzahl der Krankenhausbesuche kann nicht negativ sein. Wenn ein Integer übermittelt wird, muss dieser größer oder gleich 0 sein."
Severity: #error
Expression: "value.as(integer).empty() or value.as(integer) >= 0"