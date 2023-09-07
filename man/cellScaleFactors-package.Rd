\name{cellScaleFactor}
\alias{cellScaleFactor}
\docType{data}
\title{
Cell-level scale factor data mined from literature and public data.
}
\description{
This package contains cell type-level summaries which may be used as cell scale factors for various purposes, including in bulk transcriptomics deconvolution with single-cell/single-nucleus RNA-seq reference datasets.

Not performing tranformations using cell scale factors applied to the cell type reference may cause deconvolution algorithms 
to quantify differences in mRNA abundance rather than differences in cell type proportions.
}
\usage{data("cellScaleFactor")}
\format{
  A tibble with 35 observations on the following 6 variables.
  \describe{
    \item{\code{cell_type}}{a character vector, cell type label.}
    \item{\code{tissue}}{a character vector, tissue where the factor was tested.}
    \item{\code{scale.factor.value}}{a numeric vector, value of the scale factor.}
    \item{\code{scale.factor.type}}{a character vector, type of measurement for scale factor.}
    \item{\code{scale.factor.data.source}}{a character vector, type of data factor was calculated from.}
    \item{\code{citation.s.}}{a character vector, reference where scale factor was published.}
  }
}
\details{
Cell scale factors are either expression-based (e.g. summarized from sc/snRNA-seq data) or expression-orthogonal (e.g. fluorophore- or immunohistochemistry-based imaging, cytometric sorting and characterization, etc.).
}
\source{
Sources are provided in the metadata table, and indexed by the "citation" column in the main table csf.rda.
}
\references{

The utility of cell scale factors for deconvolution is discussed in Maden et al 2023:

Maden, S. et al. "Challenges and opportunities to computationally deconvolve heterogeneous tissue with varying cell sizes using single cell RNA-sequencing datasets". arXiv (2023). 10.48550/arXiv.2305.06501

Cell scale factors, including factors provided in this repository, were studied with applications for bulk transcriptomics deconvolution in the following:

Darmanis, S. et al. "A survey of human brain transcriptome diversity at the single cell level". PNAS 112, (23) 7285-7290 (2015). www.pnas.org/cgi/doi/10.1073/pnas.1507125112

Dietrich, A. et al. "SimBu: bias-aware simulation of bulk RNA-seq data with variable cell-type composition". Bioinformatics, Volume 38, Issue Supplement_2, September, Pages ii141–ii147, (2022). https://doi.org/10.1093/bioinformatics/btac499

Codeluppi, S. et al. "Spatial organization of the somatosensory cortex revealed by osmFISH". Nat Methods 15, 932–935 (2018). https://doi.org/10.1038/s41592-018-0175-z

Finotello, F. et al. "Molecular and pharmacological modulators of the tumor immune contexture revealed by deconvolution of RNA-seq data". Genome Med 11, 34 (2019). https://doi.org/10.1186/s13073-019-0638-6

Monaco, G. et al. "RNA-Seq Signatures Normalized by mRNA Abundance Allow Absolute Deconvolution of Human Immune Cell Types".  Cell Reports 26, 1627–1640 (2019) https://doi.org/10.1016/j.celrep.2019.01.041

Sosina, O. et al. "Strategies for cellular deconvolution in human brain RNA sequencing data".  F1000Research (2021) https://doi.org/10.12688/f1000research.50858.1

}
\examples{
data(cellScaleFactor)
# summarize number of scale factors by cell type label
table(cellScaleFactor[,"cell.type"])
# summarize scale factors by tissue
table(cellScaleFactor[,"cell.type"], cellScaleFactor[,"tissue"])
# summarize scale factors by source
table(cellScaleFactor[,"cell.type"], cellScaleFactor[,"citation"])
}
\keyword{datasets}
\keyword{scrnaseq}
\keyword{rnaseq}
\keyword{deconvolution}
\keyword{singlecell}
\keyword{singlenucleus}
\keyword{snrnaseq}
