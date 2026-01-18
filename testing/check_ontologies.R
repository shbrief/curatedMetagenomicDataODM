library(readr)
library(tidyr)

dd <- readr::read_csv("~/Desktop/Work/OmicsMLRepoData/inst/extdata/cMD_data_dictionary.csv")

ontos <- dd %>%
    select(ColName, OntologyDB) %>%
    separate_longer_delim(OntologyDB, "|") %>%
    arrange(OntologyDB)

## Issues
#'
#'"treatment" only has NCIT terms. Manually include all other terms
#'      CHEBI:166822 (EC 3.4.23.15 (renin) inhibitor) not showing up in "treatment"
#'manually create FMA ontology for "probing pocket depth"
#'
#'Check other manually created features, re-create with template and robot
#'  feces_phenotype_metric
#'  smoker
#'
#'Check with Sehyun for "details" columns: dictionary specifies allowed values
#'  disease_details
#'  ancestry_details
#'  body_site_details
#'  
#'OBA link does not work in "biomarker"
#'  opened issue
#