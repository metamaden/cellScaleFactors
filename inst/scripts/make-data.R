#!/usr/bin/env R

# Author: Sean Maden
#
# SCRIPT:
# Writes cell size scale factors data as CSV and TBL/RDA files.
#
# DATA SOURCES:
# Data were compiled as Table 4 in Maden et al 2023 (https://arxiv.org/abs/2305.06501). Original data sources were as follows:
#
# * 1. Sosina et al. "Strategies for cellular deconvolution in human brain RNA sequencing data." F1000Res (2021). https://f1000research.com/articles/10-750
# * 2. Codeluppi et al. "Spatial organization of the somatosensory cortex revealed by osmFISH." Nat Methods (2018). 10.1038/s41592-018-0175-z
# * 3. Darmanis et al. "A survey of human brain transcriptome diversity at the single cell level". Proc Natl Acad Sci USA (2015). 10.1073/pnas.1507125112
# * 4. Dietrich et al. "SimBu: bias-aware simulation of bulk RNA-seq data with variable cell-type composition". Bioinformatics (2022). 10.1093/bioinformatics/btac499
# * 5. Finotello et al. "Molecular and pharmacological modulators of the tumor immune contexture revealed by deconvolution of RNA-seq data". Genome Med (2019). 10.1186/s13073-019-0638-6
# * 6. Racle et al. "Simultaneous enumeration of cancer and immune cell types from bulk tumor gene expression data". eLife (2017). 10.7554/eLife.26476
# * 7. Monaco et al. "RNA-Seq Signatures Normalized by mRNA Abundance Allow Absolute Deconvolution of Human Immune Cell Types". Cell Rep (2019). 10.1016/j.celrep.2019.01.041
#

library(tibble)
csv.path <- "./cellScaleFactors/inst/csv/cellScaleFactors.csv"
tbl.path <- "./cellScaleFactors/inst/rda/cellScaleFactors.rda"
csv <- read.csv(csv.path)
tbl <- as_tibble(csv)
save(tbl, file = tbl.path)