#' represent data in a 'tidy' format
#'
#' 'Tidy' data takes a 'long' view of data, where each variable is a column
#'
#' @param pdata_file character(1)
#'
#' @param exprs_file character(1)
#'
#' @return a data.frame()
#'
#' @importFrom reshape2 melt
#' @importFrom dplyr tbl_df
#' @importFrom magrittr %>%
#' @export
input_tidy <- function(pdata_file, exprs_file) {
    classic <- input_classic(pdata_file, exprs_file)
    melt(classic, id.vars = 1:22, variable.name = "probeset",
         value.name = "exprs") %>% tbl_df
}
