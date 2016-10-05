#' help starts
#'
#' This function returns numbers of letters
#' 
#' @param who character(1) the name of person to start a conversation with
#' 
#' @return character() a line of text to be used when starting conversation. 
#' 
#' @examples 
#' hi("world")
#' 
#' @export
#' 
hi <- function(who) {
    stopifnot(
        is.character(who),
        length(who) == 1,
        !is.na(who)
    )
    paste("hello", shout(who), "you have", nchar(who), "letters in your name")
}

shout <- function(who) {
    toupper(who)
}

    