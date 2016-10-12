#' Rich data input
#'
#' Capture the semantic meaning of the data that we represent.
#'
#' @param pdata_file character(1)
#'
#' @param exprs_file character(1)
#'
#' @return A SummarizedExperiment object containing samples as colData(), and
#' the expression values as assay().
#'
#' @importFrom SummarizedExperiment SummarizedExperiment
#'
#' @export
input_rich <- function(pdata_file, exprs_file) {
    pdata <- read.csv(pdata_file, row.names = 1, check.names = FALSE)
    exprs <- read.csv(exprs_file, row.names = 1, check.names = FALSE)

    SummarizedExperiment(as.matrix(exprs), colData=pdata)
}
