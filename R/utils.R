# Internal utility functions

#' Get supported languages
#'
#' Returns a vector of languages supported by greeting functions
#'
#' @return Character vector of supported language names
#' @keywords internal
get_supported_languages <- function() {
  c("english", "spanish", "french", "portuguese", "german", "italian")
}

#' Capitalize first letter
#'
#' Capitalizes the first letter of a string
#'
#' @param x Character string to capitalize
#' @return Character string with first letter capitalized
#' @keywords internal
capitalize_first <- function(x) {
  if (nchar(x) == 0) return(x)
  paste0(toupper(substr(x, 1, 1)), substr(x, 2, nchar(x)))
}
