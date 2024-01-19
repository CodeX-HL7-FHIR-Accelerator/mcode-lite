// Profiles for FHIR resources considered metadata in a genomics report. These include patient, practitioner, and organization.

Profile: EomCancerType
Parent: mcodePrimaryCancerCondition
Id: eom-cancer-type
Title: "EOM Cancer Type"
Description: "The cancer type scoped to the EOM program." 
* extension[histologyMorphologyBehavior] 1..1 MS
// * include codes from EomCancerDisorderVS
// * code from EomCancerType // should include all the SNOMED and ICD-10 codes from the seven cancer types.