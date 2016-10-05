#' help starts
#'
#' This function returns numbers of letters
#' 
#' @param who character(1) the name of person to start a conversation with
#' 
#' @param how character(1)
#' 
#' @return character() a line of text to be used when starting conversation. 
#' 
#' @examples 
#' hi("world","shout")
#' 
#' @export
#' 
hi <- function(who, how = c("shout", "whisper")) {
    stopifnot(
        is.character(who),
        length(who) == 1,
        !is.na(who)
    )
    how <- match.arg(how)
    fun <- switch(how, shout=shout, whisper=whisper
    )
    paste("hello", fun(who), "you have", nchar(who), "letters in your name")
}

shout <- function(who) {
    toupper(who)
}

whisper <- function(who) {
    tolower(who)
}

    