#' Say Hello
#'
#' This function prints a friendly greeting. It can be customized with
#' different names and languages.
#'
#' @param name Character string. The name to greet. Default is "world".
#' @param language Character string. The language for the greeting.
#'        Supported languages: "english" (default), "spanish", "french", "portuguese".
#' @param exclamation Logical. Whether to add an exclamation mark. Default is TRUE.
#'
#' @return A character string containing the greeting.
#' @export
#'
#' @examples
#' hello()
#' hello("R Users")
#' hello("amigos", language = "spanish")
#' hello("mes amis", language = "french", exclamation = FALSE)
#'
#' @seealso \code{\link{goodbye}} for a farewell function
hello <- function(name = "world", language = "english", exclamation = TRUE) {
  # Input validation
  if (!is.character(name) || length(name) != 1) {
    stop("'name' must be a single character string")
  }

  if (!is.character(language) || length(language) != 1) {
    stop("'language' must be a single character string")
  }

  if (!is.logical(exclamation) || length(exclamation) != 1) {
    stop("'exclamation' must be a single logical value")
  }

  # Select greeting based on language
  greeting <- switch(
    tolower(language),
    english = "Hello",
    spanish = "Hola",
    french = "Bonjour",
    portuguese = "Olá",
    # Default to English if language not supported
    "Hello"
  )

  # Construct the greeting
  result <- paste0(greeting, ", ", name)

  # Add exclamation mark if requested
  if (exclamation) {
    result <- paste0(result, "!")
  } else {
    result <- paste0(result, ".")
  }

  # Print the greeting and return it invisibly
  cat(result, "\n")

  # Return the greeting
  invisible(result)
}
