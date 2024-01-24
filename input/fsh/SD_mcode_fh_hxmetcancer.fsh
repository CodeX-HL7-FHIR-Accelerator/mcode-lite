/* minimal for cancer disease status */
Profile: McodeFhHxMetastaticCancer
Parent: McodeHxMetCancer
Id: mcode-fh-history-of-metastatic-cancer
Title: "Minimal History of Metastatic Cancer"
Description: "Minimal data set for identifying the history of metastatic cancer."

* value[x] 1..1 // make this required. These should be asserted for EOM.
* . MS  // make the whole profile must-support
