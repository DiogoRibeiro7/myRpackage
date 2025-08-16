#' Say Hello
#'
#' This function prints a friendly greeting. It can be customized with
#' different names and languages.
#'
#' @param name Character string. The name to greet. Default is "world".
#' @param language Character string. The language for the greeting.
#'        Supported languages: "english" (default), "spanish", "french", "portuguese", "german", "italian".
#' @param exclamation Logical. Whether to add an exclamation mark. Default is TRUE.
#' @param capitalize Logical. Whether to capitalize the name. Default is FALSE.
#'
#' @return A character string containing the greeting.
#' @export
#'
#' @examples
#' hello()
#' hello("R Users")
#' hello("amigos", language = "spanish")
#' hello("mes amis", language = "french", exclamation = FALSE)
#' hello("world", capitalize = TRUE)
#'
#' @seealso \code{\link{goodbye}} for a farewell function
hello <- function(name = "world", language = "english", exclamation = TRUE, capitalize = FALSE) {
  # Input validation
  if (!is.character(name) || length(name) != 1) {
    stop("'name' must be a single character string")
  }

  if (!is.character(language) || length(language) != 1) {
    stop("'language' must be a single character string")
  }

  # Validate language parameter
  supported_languages <- c("english", "spanish", "french", "portuguese", "german", "italian")
  language <- tolower(language)
  if (!language %in% supported_languages) {
    warning(
      sprintf(
        "Language '%s' not supported. Using English instead. Supported languages: %s",
        language,
        paste(supported_languages, collapse = ", ")
      )
    )
    language <- "english"
  }

  if (!is.logical(exclamation) || length(exclamation) != 1) {
    stop("'exclamation' must be a single logical value")
  }

  if (!is.logical(capitalize) || length(capitalize) != 1) {
    stop("'capitalize' must be a single logical value")
  }

  # Capitalize name if requested
  if (capitalize) {
    name <- paste0(toupper(substr(name, 1, 1)), substr(name, 2, nchar(name)))
  }

  # Select greeting based on language
  greeting <- switch(
    language,
    english = "Hello",
    spanish = "Hola",
    french = "Bonjour",
    portuguese = "Ol\u00e1", # Using Unicode escape for 'á'
    german = "Hallo",
    italian = "Ciao",
    # Default to English if language not supported (shouldn't happen due to validation)
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
