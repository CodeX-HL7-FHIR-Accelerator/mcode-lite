ValueSet: EomCancerDisorderVS
Id: eom-mcode-cancer-disorder-vs
Title: "Cancer Disorder Value Set"
Description:   "A broad cancer-related value set containing both primary and secondary tumor types, with codes from ICD-10 and SNOMED CT, including both diagnosis and histology/morphology/behavior codes. ICD-O-3 morphology codes may also be used and are considered conformant to the specification. For SNOMED, the value set includes all codes descending from 363346000 'Malignant neoplastic disease (disorder)' and 108369006 'Neoplasm (morphologic abnormality)'."
* insert SNOMEDCopyrightForVS
* ^extension[FMM].valueInteger = 4
/* insert list of SNOMED and ICD-10-CM codes from the 7 different cancer types included in the EOM v1.0 model:
 * Breast Cancer
 * Chronic Leukemia
 * Lung Cancer
 * Lymphoma
 * Multiple Myeloma
 * Prostate Cancer
 * Small Intestine/Colorectal Cancer
 */