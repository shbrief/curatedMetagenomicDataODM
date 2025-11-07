# Paths to curated data files

# Missing features:
# family_role
# lifestyle
# zigosity (zygosity)

cdata_dir <- "/home/kaelyn/Desktop/Work/OmicsMLRepoData/curatedMetagenomicData/data"
feature_files <- c("curated_dietary_restriction.csv",
                   "curated_feces_phenotype.csv",
                   "curated_FMT.csv", 
                   "curated_neonatal.csv",
                   "curated_obgyn.csv", 
                   "curated_probing_pocket_depth.csv",
                   "curated_sex.csv",
                   "curated_tumor_staging.csv")
fpaths <- file.path(cdata_dir, feature_files)

dlist <- lapply(fpaths, read.csv)
names(dlist) <- gsub("curated_|.csv", "", feature_files)
