
Cancer disease status information is exchanged referencing the [mCODE Disease Status](https://hl7.org/fhir/us/mcode/StructureDefinition-mcode-cancer-disease-status.html) profile.  

The essential fields (Must Support or Cardinality greater than 0..*) to be provided in this resource are:


|Element name                       | mCODE Element                    |  Cardinality       | Guidance                                            |
|----------------------------------|----------------------------------|:------------------:|-----------------------------------------------------|
| status                           | Observation.status               |     1..1           | EOM: only `final` status. |
| subject                          | Reference(McodeFhPatient)        |     1..1           |  |
| effectiveDateTime                | Reference(McodeFhPatient)        |     1..1           |  |