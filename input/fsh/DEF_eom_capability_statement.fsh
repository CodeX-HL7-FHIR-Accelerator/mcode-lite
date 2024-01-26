Instance: eom-mcode-server
InstanceOf: CapabilityStatement
Usage: #definition
* description = "EOM example for creating an mCODE-derived capability statement."
* name = "CapabilityStatementEomPatientBundle"
* title = "mCODE EOM Server: Get Bundle for an EOM Patient"
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><h2 id=\"title\">mCODE EOM Server: Get an EOM Bundle for a Patient</h2><ul><li><b>Official URL:</b><code>http://hl7.org/fhir/us/mcode/CapabilityStatement/mcode-sender-patient-bundle</code></li><li><b>Implementation Guide Version:</b> None</li><li><b>FHIR Version:</b> 4.0.1</li><li><b>Intended Use:</b> Requirements</li><li><b>Supported Formats: </b>XML, JSON</li><li><b>Published:</b> 2020-10-30 07:15:00.000000-04:00</li><li><b>Published by:</b> None</li><li><b>Status:</b> Draft (experimental)</li></ul><p>Retrieves a Bundle of Condition resources with a code in mCODE's cancer condition value set, and allows for associated Patient resources to be retrieved in a subsequent request. Use ONLY when reverse chaining AND <code>_include</code> are not available on the system.</p><!-- No support expectation extension --><h3 class=\"no_toc\" id=\"igs\">Support the Following Implementation Guides:</h3><ul><li><a href=\"http://hl7.org/fhir/us/mcode/ImplementationGuide/hl7.fhir.us.mcode\">minimal Common Oncology Data Elements (mCODE) Implementation Guide</a></li></ul><!-- Imports --><h3 class=\"no_toc\" id=\"should_css\">Include And Support Everything In The Following CapabilityStatements:</h3><ul><li><a href=\"http://hl7.org/fhir/us/core/CapabilityStatement/us-core-server\">US Core Server CapabilityStatement</a></li></ul><!-- REST Behavior --><h3 id=\"behavior\">FHIR Server RESTful Capabilities</h3><p>An mCODE EOM Server <strong>SHOULD</strong>:</p><ol><li>Support all profiles defined in this Implementation Guide..</li><li>Implement the RESTful behavior according to the FHIR specification.</li><li>Return the following response classes:<ul><li>(Status 400): invalid parameter</li><li>(Status 401/4xx): unauthorized request</li><li>(Status 403): insufficient scope</li><li>(Status 404): unknown resource</li><li>(Status 410): deleted resource.</li></ul></li><li>Support json source formats for all mCODE interactions.</li><li>Identify the mCODE  profiles supported as part of the FHIR <code>meta.profile</code> attribute for each instance.</li><li>Support the searchParameters on each profile individually and in combination.</li></ol><p>The mCODE EOM Server <strong>SHOULD</strong>:</p><ol><li>Support xml source formats for all mCODE interactions.</li></ol><p id=\"security\"><strong>Security:</strong></p><ol><li>See the <a href=\"https://www.hl7.org/fhir/security.html#general\">General Security Considerations</a> section for requirements and recommendations.</li><li>A server <strong>SHOULD</strong> reject any unauthorized requests by returning an <code>HTTP 401</code> unauthorized response code.</li></ol><p><strong>Summary of Server Wide Operations</strong></p><ul><li><strong>SHOULD</strong> support the <a href=\"http://hl7.org/fhir/us/mcode/OperationDefinition/mcode-patient-everything\"><code>$mcode-patient-bundle</code></a> operation.</li></ul></div>"
* text.status = #generated

* status = #draft
* experimental = true
* date = "2024-01-25T14:55:00.000000-04:00"
* kind = #requirements
* format[0] = #xml
* format[1] = #json
* fhirVersion = #4.0.1
* implementationGuide = "http://hl7.org/fhir/us/mcode/ImplementationGuide/hl7.fhir.us.mcode"
* rest[0].mode = #server
* rest.documentation =  "An mCODE Enhancing Oncology Model (EOM) Server **SHOULD**:\n\n1. Support all profiles defined in this Implementation Guide..\n1.  Implement the RESTful behavior according to the FHIR specification.\n1. Return the following response classes:\n   - (Status 400): invalid parameter\n   - (Status 401/4xx): unauthorized request\n   - (Status 403): insufficient scope\n   - (Status 404): unknown resource\n   - (Status 410): deleted resource.\n1. Support json source formats for all mCODE interactions.\n1. Identify the mCODE  profiles supported as part of the FHIR `meta.profile` attribute for each instance.\n1. Support the searchParameters on each profile individually and in combination.\n\nThe mCODE EOM Server **SHOULD**:\n\n1. Support xml source formats for all mCODE interactions.\n"
* rest.security.description = "1. See the [General Security Considerations](https://www.hl7.org/fhir/security.html#general) section for requirements and recommendations.\n1. A server **SHOULD** reject any unauthorized requests by returning an `HTTP 401` unauthorized response code."
* imports = "http://hl7.org/fhir/us/core/CapabilityStatement/us-core-server"   // Import the US Core Server Capability Statement

* rest[0].operation[0].name = "eom-mcode-patient-bundle"
* rest[0].operation[0].definition = "http://hl7.org/fhir/us/mcode/OperationDefinition/mcode-patient-everything"
* rest[0].operation[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].operation[0].extension.valueCode = #SHOULD