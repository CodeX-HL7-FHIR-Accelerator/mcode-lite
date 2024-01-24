
### Background

**Insert introduction on the use of mCODE elements for public cancer data use. Reference different initiatives like CMS EOM and USCDI+ Cancer. Reference other research-related use case needs for public cancer data such as pragmatic clinical trials**.


A summary mapping of the actionable and minimal mCODE-lite elements are shown below:

<br/>
<object data="mCodeLiteDiagram.svg" type="image/svg+xml"></object>
<br/>


**Replace with markdown table of mappings from HDR excel to data element name updated with the mCODE STU3 update**

<!-- <object data="insert-data-elements-summary-here.png"></object> <br/> -->


### Scope

Data element prioritization was based on current health initiatives across federal agencies. These include but are not limited to the following efforts currently in development:
* Enhancing Oncology Model (EOM) Clinical Data ELements Guide, version 2.0 (January 2024)
* USCDI+ Cancer
* etc. (add more as identified)

### Approach

We provide mostly narrative with hyperlinks to the related mCODE STU3 resource. Profiles derived from their relevant mCODE profile if further constraints or extensions are needed.


### Credits

Our thanks to the contributing organizations which drive the guidance in this IG:
* Global Alliant
* Centers of Medicare and Medicaid Services (CMS)
* MITRE Corporation


<!-- **Notes:**
Goal: keeping CMS in line. Adopt a similar approach to the way [PDEx](https://build.fhir.org/ig/HL7/davinci-epdx/toc.html) reference US Core with some narrative on how mCODE resources would be leveraged.

Options:
1. bring in mCODE profiles and exclude elements with 0..0. **mlt_update_20240121**: tested and not a good option because it will reject any resource instance containing the 0..0 specified elements.
2. adopt the PDEx approach and only bring in profiles if there needs to be further constraints. The rest is narrative. Change optional things as 0..0

* for tumor markers, create narrative that TumorMarkerTest could be a subset of mCODE, give an example that narrows down the mCODE value set to ER, PR, HER2, and then (in general assumptions section) assume that conformance will be based on attestation (not programmatically validating). -->
  