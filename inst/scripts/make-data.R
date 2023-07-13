#!/usr/bin/env R

# Author: Sean Maden
#
# Write cellScaleFactors.csv as tibble .rda object.

library(tibble)
csv.path <- "./cellScaleFactors/inst/csv/cellScaleFactors.csv"
tbl.path <- "./cellScaleFactors/inst/rda/cellScaleFactors.rda"
csv <- read.csv(csv.path)
tbl <- as_tibble(csv)
save(tbl, file = tbl.path)