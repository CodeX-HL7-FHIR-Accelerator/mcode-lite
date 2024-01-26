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

* "low-risk" breast cancer and "low-intensity" prostate cancer involve additional logic using `PrimaryCancerCondition` and drug classes represented in `CancerRelatedMedicationAdministration`.  There is no formal SNOMED or ICD-10 code with that explicit description.

The following example applies mCODE to the [CMS Enhancing Oncology Model (EOM)](https://www.cms.gov/priorities/innovation/innovation-models/enhancing-oncology-model) initiative.

#### Example 1: EOM as a CapabilityStatement

**Enter link to an EOM CapabilityStatement**

#### Example 2: EOM as a Bundle
**Enter link to an example EOM bundle**

