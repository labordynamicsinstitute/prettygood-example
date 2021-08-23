# [MC number] [Manuscript Title] Validation and Replication results

> Some useful links:
> - [Official Data and Code Availability Policy](https://www.aeaweb.org/journals/policies/data-code)
> - [Step by step guidance](https://aeadataeditor.github.io/aea-de-guidance/step-by-step.html) 
> - [Template README](https://social-science-data-editors.github.io/template_README/)

SUMMARY
-------

> The openICPSR submission process has changed. If you have not already done so, please "Change Status -> Submit to AEA" from your deposit Workspace.

General
-------

> [SUGGESTED] A recommended README template for replication packages in economics can be found on the [Social Science Data Editor Github site](https://social-science-data-editors.github.io/guidance/template-README.html).

Data description
----------------

### Data Sources

#### 2000 Census of Population and Housing

- Dataset is not provided, but a link is provided in the README.
- Access conditions are described. Data is publicly available, but ICPSR requires login, agreement to data use agreement, which requires citation. 
- The data are cited in the paper but not in the README.
  > United States. Bureau of the Census. Census of population and housing, 2000 [united states]: Public use microdata sample: 5-percent sample. Ann Arbor, MI: [distributor], 2006-01-12. https://doi.org/10.3886/ICPSR13568.v1.

### Analysis Data Files

- [X] No analysis data file mentioned
- [ ] Analysis data files mentioned, not provided (explain reasons below)
- [ ] Analysis data files mentioned, provided. File names listed below.


The following file is created, not mentioned:

>  pumsak.dta


Data deposit
------------

### Requirements 

- [X] README is in TXT, MD, PDF format
- [X] openICPSR deposit has no ZIP files
- [ ] Title conforms to guidance (starts with "Data and Code for:" or "Code for:", is properly capitalized)
- [ ] Authors (with affiliations) are listed in the same order as on the paper

> [REQUIRED] Please review the title of the openICPSR deposit as per our guidelines (below).

> [REQUIRED] Please review authors and affiliations on the openICPSR deposit. In general, they are the same, and in the same order, as for the manuscript; however, authors can deviate from that order.


### Deposit Metadata

- [ ] JEL Classification (required)
- [ ] Manuscript Number (required)
- [ ] Subject Terms (highly recommended)
- [ ] Geographic coverage (highly recommended)
- [ ] Time period(s) (highly recommended)
- [ ] Collection date(s) (suggested)
- [ ] Universe (suggested)
- [ ] Data Type(s) (suggested)
- [ ] Data Source (suggested)
- [ ] Units of Observation (suggested)

> [REQUIRED] Please update the openICPSR metadata fields marked as (required), in order to improve findability of your data and code supplement. 

> [SUGGESTED] We suggest you update the openICPSR metadata fields marked as (highly recommended), in order to improve findability of your data and code supplement. 

> [SUGGESTED] We suggest you update the openICPSR metadata fields marked as (suggested), in order to improve findability of your data and code supplement. 


For additional guidance, see [https://aeadataeditor.github.io/aea-de-guidance/data-deposit-aea-guidance.html](https://aeadataeditor.github.io/aea-de-guidance/data-deposit-aea-guidance.html).


Data checks
-----------

- Data can be read using standard tools, Data is in TXT format. 
- Dataset does not have variable labels, but comes with a separate documentation TXT file. 
- Dataset is not in .dta format so replicator was unable to run the PII_stata_scan.do program. 

Code description
----------------

- There are five provided STATA do files including a "master.do".
- All tables (there is only one table in the paper) are mapped to the code.

Stated Requirements
---------------------

- [ ] No requirements specified
- [X] Software Requirements specified as follows:
  - STATA, packages: latab
- [X] Computational Requirements specified as follows:
  - 2016 vintage Linux workstation
- [X] Time Requirements specified as follows:
  - approximately 1.6s 

- [X] Requirements are complete.



Computing Environment of the Replicator
---------------------

- CISER Shared Windows Server 2019, 256GB, Intel Xeon E5-4669 v3 @ 2.10Ghz (2 processors, 36 cores)
- STATA/MP 16.1

> ALTERNATIVELY:

- CodeOcean compute capsule (run (DATE)) running Ubuntu 18.04
- Stata/MP 16.0 

Replication steps
-----------------

1. Downloaded code from URL provided.
1. Downloaded data from URL indicated in the README. A sign-up was required for an openICPSR login. **The replicator downloaded only the Alaskan dataset.**
1. Extracted Census/ICPSR zip file that retains the directory structure data/ICPSR_13568/DS0002.
1. Run code as per README.


> [SUGGESTED] Add code to "config.do" that creates directories named "inputdata" and "outputdata".

> [SUGGESTED] Specify where the downloaded data needs to be stored.

When unzipping (on Windows), the directories created did not correspond to the code.

> [SUGGESTED (IF USING THE FULL DOWNLOAD)] While the data downloaded contains 100+ files, only one file is used. Please specify this in the README, as individual files can be downloaded from ICPSR.


Findings
--------

### Data Preparation Code

| Data Preparation Program | Dataset created |  | Replicated? |
|--------------------------|-----------------|--|-------------|
| 01_dataclean.do          | pumsak.dta      |  | Yes         |

### Tables

| Figure/Table # | Program      | Line Number | Replicated? |
|----------------|--------------|-------------|-------------|
| Table 1        | 02_table1.do | 1-12        | Yes         |

### Figures

N/A

### In-Text Numbers

- [X] There are no in-text numbers, or all in-text numbers stem from tables and figures.

- [ ] There are in-text numbers, but they are not identified in the code



Classification
--------------
- [X] full reproduction
- [ ] full reproduction with minor issues
- [ ] partial reproduction (see above)
- [ ] not able to reproduce most or all of the results (reasons see above)

### Reason for incomplete reproducibility

- [ ] `Discrepancy in output` (either figures or numbers in tables or text differ)
- [ ] `Bugs in code`  that  were fixable by the replicator (but should be fixed in the final deposit)
- [ ] `Code missing`, in particular if it  prevented the replicator from completing the reproducibility check
  - [ ] `Data preparation code missing` should be checked if the code missing seems to be data preparation code
- [ ] `Code not functional` is more severe than a simple bug: it  prevented the replicator from completing the reproducibility check
- [ ] `Software not available to replicator`  may happen for a variety of reasons, but in particular (a) when the software is commercial, and the replicator does not have access to a licensed copy, or (b) the software is open-source, but a specific version required to conduct the reproducibility check is not available.
- [ ] `Insufficient time available to replicator` is applicable when (a) running the code would take weeks or more (b) running the code might take less time if sufficient compute resources were to be brought to bear, but no such resources can be accessed in a timely fashion (c) the replication package is very complex, and following all (manual and scripted) steps would take too long.
- [ ] `Data missing` is marked when data *should* be available, but was erroneously not provided, or is not accessible via the procedures described in the replication package
- [ ] `Data not available` is marked when data requires additional access steps, for instance purchase or application procedure. 
