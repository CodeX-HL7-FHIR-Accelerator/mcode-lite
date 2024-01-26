
<blockquote class="stu-note">
    <p>
    <strong>This page is under development and subject to change pending review feedback.</strong>
    </p>
</blockquote>

Cancer disease status information is exchanged referencing the [mCODE History of Metastatic Cancer](https://build.fhir.org/ig/HL7/fhir-mCODE-ig/StructureDefinition-mcode-history-of-metastatic-cancer.html) profile.  

The essential fields (Must Support or Cardinality greater than 0..*) to be provided in this resource are:


|Element name                       | mCODE Element                    |  Cardinality       | Guidance                                            |
|----------------------------------|----------------------------------|:------------------:|-----------------------------------------------------|
| code                             | Observation.code                 |     1..1           |  set to a value set asserting history of metatstases.|
| status                           | Observation.status               |     1..1           | EOM: only `final` status. |
| subject                          | Reference(McodeFhPatient)        |     1..1           |  |
| effectiveDateTime                | Reference(McodeFhPatient)        |     1..1           |  |
{: .grid}

**TBD**