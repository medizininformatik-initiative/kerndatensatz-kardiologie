Invariant: mii-inv-kardio-dataabsentreason
Description: "If there is no Observation.value, a dataAbsentReason must be given."
* severity = #error
* expression = "value.exists().not() implies dataAbsentReason.exists()"