# seroba_validation
Validation data and scripts for new serotypes/subtypes added to SeroBA2

## Description
This repository contains validation scripts and test data for isolates in the Global Pneumococcal Sequencing (GPS) 1 dataset that were typed as one of the newly added serotypes/subtypes to SeroBA2.

## Running the tests
To run the tests, you will need the `bash` and `python3` executables. Some of the tests require `biopython`. This is installed automatically by the test script.

To run the tests, run the following commands:
```
git clone https://github.com/Oliver-Lorenz-dev/seroba_validation.git
cd seroba_validation
bash test_suite.sh
```

The tests should take around 3 minutes to run.

## Methodology
To test the addition of new serotypes/subtypes to the SeroBAnk in SeroBA2, we ran SeroBA2 on the GPS1 dataset (26306 genomes).

For each new serotype and subtype newly added in the SeroBA(v2.0), we further validated the serotype results by checking for the presence or absence of specific genes, alleles and mutations associated with specific serotypes/subtypes by the script in this repo. 
- If the specific serotype/subtype has <100 genomes in the GPS1 database, all samples will be used for the validation.
- If the specific serotype/subtype has ≥100 genomes in the GPS1 database, we subset 100 random samples using the `shuf` command for validation. 
For each serotype/subtype, the necessary test data is stored in a zip archive - either the ARIBA report, or the Capsular Polysaccharide Sequence (CPS) sequence in the FASTA format.

Depending on the serotype/subtype in question, different methods were used for testing, see the [validation table](#Validation-table) for more information.

### Validation table
| Serotype/Subtype  | Validation method                      | Key Gene(s)                         |
| :---------------- | :-------------------------------------:| ----------------------------------: |
| 06A-I             | Check allele presence in ARIBA report  | rmlA_3, rmlB_4, wzg_06AI            |
| 06A-II            | Check allele presence in ARIBA report  | rmlA_2, wzg_06AII, wzy_06AII        |
| 06A-III           | Check allele presence in ARIBA report  | rmlA_4, wzg_06BI                    |
| 06A-IV            | Check for point mutation in gene(s)    | wze                                 |
| 06A-V             | Check allele presence in ARIBA report  | rmlA_5, wzg_06AI                    |
| 06A-VI            | Check allele presence in ARIBA report  | rmlA_2, rmlC_2, wzg_06AI, wzy_06AII |
| 06B-I             | Check allele presence in ARIBA report  | rmlA_2, rmlC_2, wzg_06AI, wzy_06AII |
| 06B-II            | Check allele presence in ARIBA report  | rmlA_5, rmlB_3, wzg_06BII           |
| 11F_like          | Check for presence of specific gene(s) | gct, wcrL, wcwC                     |
| 15D               | Check for presence of specific gene(s) | wzd                                 |
| 19A-I             | Check allele presence in ARIBA report  | rmlB_2, rmlD_2, wzy_1               |
| 19A-II            | Check allele presence in ARIBA report  | rmlB_2, rmlD_2, wzy_1               |
| 19A-III           | Check allele presence in ARIBA report  | rmlB_1, rmlD_1, wzy_1               |
| 19F-II            | Check allele presence in ARIBA report  | rmlB_5, wchA_4, wzg_1               |
| 19F-III           | Check for point mutation in gene(s)    | wchO, wzx, wzy                      |
| 19F-IV            | Check allele presence in ARIBA report  | rmlB_5, wchA_4, wzg_1               |
| 20A               | Check for absence of specific gene(s)  | whaF                                |
| 20B               | Check for presence of specific gene(s) | whaF                                |
| 20C               | Check for absence of specific gene(s)  | wciG                                |
| 24A               | Check for absence of specific gene(s)  | rbsF                                |
| 33E               | Check for absence of specific gene(s)  | wciE                                |
| 33H               | Check for absence of specific gene(s)  | wciG                                |
| 36A               | Check for presence of specific gene(s) | wcjA                                |
| 36B               | Check for point mutation in gene(s)    | wcjA                                |
