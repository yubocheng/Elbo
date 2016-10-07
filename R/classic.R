#' Classic R approaches
#'
#' @details There are two files, from a microarray experiment. ALL-phenoData.csv
#' describes the 128 samples, ALL-expression.csv are the normalized expressions
#' values for 12k probesets across 128 samples.
#'
#' @param pdata_file character(1)
#'
#' @param exprs_file character(1)
#'
#' @return A data.frame() containing samples as rows and phenotype data and
#' expression data as columns.
#'
#' @export
input_classic <- function(pdata_file, exprs_file) {
    pdata <- read.csv(pdata_file, row.names = 1, check.names = FALSE)
    exprs <- read.csv(exprs_file, row.names = 1, check.names = FALSE)
    merge(pdata, t(exprs), by = 0)
}
