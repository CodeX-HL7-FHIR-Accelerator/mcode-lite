/* Example instance of minimal cancer patient */
Instance: cancer-patient-john-anyperson
InstanceOf: McodeFhPatient
Description: "Example of Patient"
* identifier.use = #usual
* identifier.type = IDTYPE#MC "Patient's Medicare number"
* identifier.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier.value = "1EG4-TE5-MK73"
* name.family = "Anyperson"
* name.given[0] = "John"
* name.given[1] = "B."
* gender = #male
* birthDate = "1951-01-20"
* extension[USCoreBirthSex].valueCode = #M
* address.line = "234 Anyway St"
* address.city = "Anytown"
* address.postalCode = "12345"
* address.country = "US"