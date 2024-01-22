
Cancer condition identification information is exchanged referencing the [mCODE Primary Cancer Condition](https://hl7.org/fhir/us/mcode/STU3/StructureDefinition-mcode-primary-cancer-condition.html) resource.  

The essential fields (Must Support or Cardinality greater than 0..*) to be provided in the [mCODE-FH](StructureDefinition-mcode-fh-cancer-condition.html) resource are:


| Element name                     | mCODE Element Path                              |  Cardinality   | Guidance                                                   |
|----------------------------------|-------------------------------------------------|:--------------:|------------------------------------------------------------|
| Cancer type name                 | Condition.code                                  |     1..1       | EOM constrains to ICD-10-CM |
| Cancer asserted date             | Condition.assertedDate                          |     0..1 MS    |  |
| Histology                        | Condition.extension:histologyMorphologyBehavior |     0..1 MS    | EOM constrains value set to ICD-O-3. Not in USCDI+ Cancer. |
| Clinical status                  | Condition.clinicalStatus                        |     0..1 MS    | EOM constrains to `recurrence` or `relapse` status only.         |
