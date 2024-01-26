/* ******** PATIENT ********* */
Profile: McodeFhPatient
Parent: McodeCancerPatient
Id: mcode-fh-cancer-patient
Title: "Minimal Cancer Patient Profile"
Description: "An mCODE patient for use for federal health initiatives. A profile was created to ensure that there is at least a Medicare identifier included."
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slicing by identifier.type"
* identifier contains Medicare 0..1 MS
* identifier[Medicare].type = IDTYPE#MC

* . MS

/* ******** PRIMARY CANCER CONDITION ********* */

Profile: McodeFhPrimaryCancerCondition
Parent: McodePrimaryCancerCondition
Id: mcode-fh-cancer-condition
Title: "Minimal Cancer Condition Profile"
Description: "Minimal cancer condition for use for federal health initiatives. A profile was created to ensure that there is at least a Medicare identifier included."

* obeys McodeFH-condition-clinical-status
* . MS  // make the whole profile must-support

Invariant: McodeFH-condition-clinical-status
Description: "The clinical status SHALL be 'active', 'recurrence' or 'relapse'"
Expression: "(clinicalStatus.coding.where(code = 'active').exists()) or (clinicalStatus.coding.where(code = 'relapse').exists()) or (clinicalStatus.coding.where(code = 'recurrence').exists())"
Severity:   #error

/* ******** STAGING ********* */
/* Example instance of minimal cancer staging */
Profile: McodeFhTCategory
Parent: McodeTCategory
Id: cancer-staging-tnm-primary-tumor-category
Title: "Minimal TNM Staging Primary Tumor Category"
Description: "Minimal data set for TNM Primary Tumor Category"

* . MS  // make the whole profile must-support


Profile: McodeFhNCategory
Parent: McodeNCategory
Id: cancer-staging-tnm-regional-node-category
Title: "Minimal TNM Staging Regional Node Category"
Description: "Minimal data set for TNM Regional Node Category"

* . MS  // make the whole profile must-support


Profile: McodeFhMCategory
Parent: McodeMCategory
Id: cancer-staging-tnm-distant-metastasis-category
Title: "Minimal TNM Staging Distant Metastasis Category"
Description: "Minimal data set for TNM Distant Metastasis Category"

* . MS  // make the whole profile must-support

/* ******** BIOMARKER ********* */

/* Example instance of minimal tumor marker test */
Profile: McodeFhTumorMarkerTest
Parent: McodeTumorMarkerTest
Id: mcode-fh-tumor-marker-test
Title: "Minimal Tumor Marker Test"
Description: "Minimal data set for tumor marker test"

* . MS  // make the whole profile must-support

/* ******** DISEASE STATUS ********* */

Profile: McodeFhDiseaseStatus
Parent: McodeDiseaseStatus
Id: mcode-fh-cancer-disease-status
Title: "Minimal Cancer Disease Status"
Description: "Minimal data set for cancer disease status"

* . MS  // make the whole profile must-support

/* ******** HISTORY OF METASTATIC CANCER ********* */

Profile: McodeFhHxMetastaticCancer
Parent: McodeHxMetCancer
Id: mcode-fh-history-of-metastatic-cancer
Title: "Minimal History of Metastatic Cancer"
Description: "Minimal data set for identifying the history of metastatic cancer."

* . MS  // make the whole profile must-support
