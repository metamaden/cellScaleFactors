# cellScaleFactors

[<img style="float: right;" src = "inst/figures/cellScaleFactors_hexsticker.png" height="180"/>]

Authors: Sean Maden, Stephanie Hicks

Datasets containing reference tables for cell scale factors.

# Load

Use `ExperimentHub` to load the `cellScaleFactors` dataset: 

```{r}
library(ExperimentHub)
eh <- ExperimentHub()
csfData <- query(eh, c("cellScaleFactors"))
path <- csfData[["EH8419"]]
csfData <- get(load(path))
```

Preview the first rows of the `tibble` object:

```{r}
head(csfData)
# A tibble: 6 × 6
  cell_type tissue scale.factor.value scale.factor.type scale.factor.data.source citation.s. 
  <chr>     <chr>               <dbl> <chr>             <chr>                    <chr>       
1 glial     brain                  91 cell area         osmFISH                  Codeluppi e…
2 neuron    brain                 123 cell area         osmFISH                  Codeluppi e…
3 glial     brain                 180 nuclear mRNA      osmFISH                  Codeluppi e…
4 neuron    brain                 198 nuclear mRNA      osmFISH                  Codeluppi e…
5 glial     brain               12879 library_size      expression               Darmanis et…
6 neuron    brain               18924 library_size      expression               Darmanis et…
```

# Citations

Main cell scale factors data table source:

Maden, Sean K., Sang Ho Kwon, Louise A. Huuki-Myers, Leonardo Collado-Torres, Stephanie C. Hicks, and Kristen R. Maynard. 2023. “Challenges and Opportunities to Computationally Deconvolve Heterogeneous Tissue with Varying Cell Sizes Using Single Cell RNA-Sequencing Datasets.” arXiv. https://doi.org/10.48550/arXiv.2305.06501.

Original publications providing the compiled factors:

Darmanis, S. et al. "A survey of human brain transcriptome diversity at the single cell level". PNAS 112, (23) 7285-7290 (2015). www.pnas.org/cgi/doi/10.1073/pnas.1507125112

Dietrich, A. et al. "SimBu: bias-aware simulation of bulk RNA-seq data with variable cell-type composition". Bioinformatics, Volume 38, Issue Supplement_2, September, Pages ii141–ii147, (2022). https://doi.org/10.1093/bioinformatics/btac499

Codeluppi, S. et al. "Spatial organization of the somatosensory cortex revealed by osmFISH". Nat Methods 15, 932–935 (2018). https://doi.org/10.1038/s41592-018-0175-z

Finotello, F. et al. "Molecular and pharmacological modulators of the tumor immune contexture revealed by deconvolution of RNA-seq data". Genome Med 11, 34 (2019). https://doi.org/10.1186/s13073-019-0638-6

Monaco, G. et al. "RNA-Seq Signatures Normalized by mRNA Abundance Allow Absolute Deconvolution of Human Immune Cell Types".  Cell Reports 26, 1627–1640 (2019) https://doi.org/10.1016/j.celrep.2019.01.041

Sosina, O. et al. "Strategies for cellular deconvolution in human brain RNA sequencing data".  F1000Research (2021) https://doi.org/10.12688/f1000research.50858.1
