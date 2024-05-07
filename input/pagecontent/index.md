
### Purpose

<blockquote class="stu-note">
    <p>
    The purpose of this knowledge artifact is to inform the reader on how to leverage mCODE in the creation of derived implementation guides for federal health initiatives. This IG is in development not formally published by Health Level 7. Rather, it is an informative, mostly narrative-driven document. Examples may be provided for illustrative purposes but should not be considered complete. The goal is to provide scoped views into mCODE that may be tailored to use cases in federal health.
    </p>
</blockquote>

### Background

Since its initial publication in March 2020, the minimal Common Oncology Data Elements (mCODE) Fast Healthcare Interoperability Resources (FHIR) Implementation Guide (IG) has significantly made an impact on standardizing the exchange of cancer data. Now in its third standard for trial use edition ([mCODE STU3](https://hl7.org/fhir/us/mcode/)), parts of mCODE have been adopted by a wide community of providers, payers, standards development organizations (SDOs). 

The mCODE specification however asserts that it is a ["domain of knowledge" implementation](https://hl7.org/fhir/us/mcode/#understanding-this-guide) in that there may be more specific use cases which merit further clarification on which mCODE elements are relevant for use. 

mCODE's [development history](https://hl7.org/fhir/us/mcode/#development-history) began with a provider's view of a minimal and actionable set of elements that empowered shared-decision making between a provider and patient for the diagnosis, treatment, and monitoring of cancer. The mCODE scope has since evolved to expand a broader set of elements that were informed by several drivers: 
* addressing more specific clinical use cases in the HL7 CodeX FHIR Accelerator. such as integrated trials matching and cancer registry reporting.
* use in clinical research such as pragmatic clinical trials, and interventional or observational studies.
* federally driven health-interoperability initiatives like CC-DIRECT and USCDI+ Cancer.

mCODE still aims to "capture data once, use many times" in the approach to cancer data interoperability. However, pragmatically, each of these efforts may vary in scope. Some initiatives like the CMS Enhancing Oncology Model (EOM) narrows down mCODE to less than 20 elements while USCDI+ cancer adds additional elements which were included as part of the USCDI core data requirements. Subsequently, there is a need to better identify how mCODE could apply or be further refined to address these efforts.


### Approach

The approach in creating a lightweight version of mCODE involved the following steps:
* gathering relevant data models relevant to ONC and CMS-related federal health initiatives. These include but are not limited to the following efforts currently in development:
  * [Enhancing Oncology Model (EOM) Clinical Data ELements Guide, version 2.0 (January 2024)](https://www.cms.gov/priorities/innovation/media/document/eom-clinical-data-elements-guide)
  * **TBD** on other artifacts such as [USCDI+ Cancer](https://uscdiplus.healthit.gov/uscdi?id=uscdi_record&table=x_g_sshh_uscdi_domain&sys_id=71df78228745b95098e5edb90cbb3527&view=sp): A service that ONC provides to federal partners who have a need to establish, harmonize, and advance the use of interoperable datasets that extend beyond the core data in the USCDI in order to meet agency-specific programmatic requirements (source: [USCDI](https://uscdiplus.healthit.gov/uscdi)).

A summary mapping of the actionable and minimal mCODE-lite elements are shown below:

<br/>
<object data="mCodeLiteDiagram.svg" type="image/svg+xml"></object>
<br/>

<blockquote class="stu-note">
    <p>
    It is important to realize that neither mCODE, nor this guidance is exclusionary of any other FHIR resources that may be included in a data exchange. Implementers may include external FHIR base resources (e.g. as included in USCDI+ Cancer), profiles, and additional open components and extensions to existing mCODE profiles. This allows for extensibility of mCODE as further health interoperability requirements expand.
    </p>
</blockquote>

In comparing data element requirements in these data models, we recognize that structural and semantic mapping will change over time with evolving requirements and versioning. Moreover, constraining the IG too tight towards one of the model (e.g.: EOM) will make an overarching IG unusable for conformance to other related IGs (e.g.: USCDI+ Cancer). 

**Recognizing that these specifications may change, our focus is instead to identify requirement and modeling patterns and  recommended approaches for further profiling if needed.** 

All profiles that appear in this document are specified must-support (MS) at the profile. Specifications at the element level are avoided as much as possible.

### How to read this guide

The IG provides mostly narrative with hyperlinks to the related mCODE STU3 resource. Profiles derived from their relevant mCODE profile if further constraints or extensions are needed.

Examples on how to apply this guide for specific federal initiatives are added in the Case Study menu. Note that they are meant to be illustrative and will not comprehensively cover all aspects of conformance to their respective FHIR data submission requirements. 

Profiles that are included in this guidance do not change mCODE. The only change is that they were marked as "must-support" at the highest level as a starting template for modification.

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
  