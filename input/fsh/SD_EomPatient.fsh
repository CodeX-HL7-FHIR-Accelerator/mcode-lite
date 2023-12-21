// Profiles for FHIR resources considered metadata in a genomics report. These include patient, practitioner, and organization.

Profile: EomCancerPatient
Parent: mcodeCancerPatient
Id: eom-patient
Title: "EOM Patient"
Description: "The beneficiary and patient in the EOM reporting." 
* identifier 1..* MS  // include an invariant that at least one identifier is a Medicare Beneficiary Identifier (MBI).
* birthDate 1..1 MS
* gender 1..1 MS

