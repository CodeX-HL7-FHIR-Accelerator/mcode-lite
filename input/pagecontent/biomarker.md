
Cancer disease status information is exchanged referencing the [mCODE Tumor Marker Test](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tumor-marker-test) profile.  

The essential fields (Must Support or Cardinality greater than 0..*) to be provided in this resource are:


|Element name                       | mCODE Element                    |  Cardinality       | Guidance                                            |
|----------------------------------|----------------------------------|:------------------:|-----------------------------------------------------|
| code                             | Observation.code                 |     1..1           |  |
| status                           | Observation.status               |     1..1           |  EOM: only `final` status. |
| subject                          | Reference(McodeFhPatient)        |     1..1           |  |
| effectiveDateTime                | Reference(McodeFhPatient)        |     1..1           |  |
{: .grid}