# Paths to curated data files

# Missing features:
# family_role
# lifestyle
# zigosity (zygosity)
# dietary_restriction
# fmt_role
# neonatal_feeding_method
# curator
# dna_extraction_kit
# sequencing_platform
# tumor_staging_tnm
# tumor_staging_ajcc

# Completed features
# feces_phenotype
# probing_pocket_depth
# smoker

# Features to export:
# neonatal_preterm_birth
# obgyn_pregnancy
# sex

cdata_dir <- "/home/kaelyn/Desktop/Work/OmicsMLRepoData/curatedMetagenomicData/data"
feature_files <- c("curated_neonatal.csv",
                   "curated_obgyn.csv", 
                   "curated_sex.csv")
fpaths <- file.path(cdata_dir, feature_files)

dlist <- lapply(fpaths, read.csv)
names(dlist) <- gsub("curated_|.csv", "", feature_files)

lapply(dlist, colnames)

# Pull unique ontology term ids

ods <- list(neonatal_preterm_birth = unique(na.omit(dlist$neonatal$curated_neonatal_preterm_birth_ontology_term_id)),
            obgyn_pregnancy = unique(na.omit(dlist$obgyn$curated_obgyn_pregnancy_ontology_term_id)),
            sex = unique(na.omit(dlist$sex$curated_sex_ontology_term_id)))


