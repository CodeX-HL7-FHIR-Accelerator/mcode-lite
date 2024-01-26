EOM participants are oncology PGPs that prescribe and administer chemotherapy for cancer. As of [EOM Clinical Data Elements Guide 2.0](https://www.cms.gov/priorities/innovation/media/document/eom-clinical-data-elements-guide), the model is centered on 6-month episodes of care triggered by receipt of a qualifying initiating cancer therapy for seven cancer types:
* Breast Cancer (not including low risk)
* Chronic Leukemia
* Lung Cancer
* Lymphoma
* Multiple Myeloma
* Prostate Cancer (not including low intensity)
* Small Intestine/Colorectal Cancer

### Modeling Considerations

#### Cancer types

EOM further specifies conditional filtering of cancer subtypes. Namely, "low-risk" breast cancer and "low-intensity" prostate cancer. There is no formal SNOMED or ICD-10 code with such explicit descriptions. Therefore, the submission of an EOM cancer patient for either breast or prostate cancer may involve additional upstream logic that leverages `PrimaryCancerCondition` and drug classes represented in `CancerRelatedMedicationAdministration`.

#### Biomarkers
EOM scopes further constraining TumorMarkerTest for contextual biomarkers relative to the seven scoped cancer types.
* patient identifier invariants that require a minimum of a Medicare identifier.

The EOM IG specifier can collectively represent these requirements in 2 ways:
* As a CapabilityStatement - this is beneficial in narrowing server and client messaging and query requirements of relevant FHIR resources.
* As a FHIR Bundle - this may be a better option for specifying a collection of relevant resources as EOM submission requirements.

Partial examples are included in this IG for illustrative purposes:
* [EOM as a CapabilityStatement](CapabilityStatement-eom-mcode-server)
* [EOM as a FHIR Bundle](StructureDefinition-mcode-patient-bundle)
