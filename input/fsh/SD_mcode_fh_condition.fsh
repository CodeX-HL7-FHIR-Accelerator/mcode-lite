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
