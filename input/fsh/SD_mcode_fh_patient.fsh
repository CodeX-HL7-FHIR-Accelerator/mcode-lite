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

// remove all unnecessary must-support elements...not a good option because it will reject any resource instance with it present.
// * address 0..0
// * telecom 0..0
