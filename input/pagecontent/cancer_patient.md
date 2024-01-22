
Cancer patient identification information is exchanged referencing the [mCODE Cancer Patient](https://hl7.org/fhir/us/mcode/StructureDefinition-mcode-cancer-patient.html) resource.  

The essential fields (Must Support or Cardinality greater than 0..*) to be provided in the [mCODE-FH](StructureDefinition-mcode-fh-cancer-patient.html) resource are:


Element name                       | mCODE Element                    |  Cardinality       | Guidance                                            |
|----------------------------------|----------------------------------|:------------------:|-----------------------------------------------------|
| Last name                        | Patient.name.family              |     1..1           |  |
| First name                       | Patient.name.given               |     1..1           | First name |
| Medicare identifier              | Patient.identifier               |     1..1           | Medicare identifier required.          |
| Birth date                       | Patient.birthDate                |     1..1           | |
| Deceased flag                    | Patient.deceased \[boolean]      |     0..1 MS        | |
| Deceased date                    | Patient.deceased \[dateTime]     |     0..1 MS        | |
| Birth Sex                        | Patient.extension.birthsex       |     0..1 MS        | |