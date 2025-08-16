#' Say Goodbye
#'
#' This function prints a friendly farewell. It can be customized with
#' different names and languages.
#'
#' @param name Character string. The name to bid farewell to. Default is "world".
#' @param language Character string. The language for the farewell.
#'        Supported languages: "english" (default), "spanish", "french", "portuguese", "german", "italian".
#' @param exclamation Logical. Whether to add an exclamation mark. Default is TRUE.
#' @param capitalize Logical. Whether to capitalize the name. Default is FALSE.
#'
#' @return A character string containing the farewell message.
#' @export
#'
#' @examples
#' goodbye()
#' goodbye("R Users")
#' goodbye("amigos", language = "spanish")
#' goodbye("mes amis", language = "french", exclamation = FALSE)
#' goodbye("world", capitalize = TRUE)
#'
#' @seealso \code{\link{hello}} for a greeting function
goodbye <- function(name = "world", language = "english", exclamation = TRUE, capitalize = FALSE) {
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

  # Select farewell based on language
  farewell <- switch(
    language,
    english = "Goodbye",
    spanish = "Adi\u00f3s", # Using Unicode escape for 'ó'
    french = "Au revoir",
    portuguese = "Adeus",
    german = "Auf Wiedersehen",
    italian = "Arrivederci",
    # Default to English if language not supported (shouldn't happen due to validation)
    "Goodbye"
  )

  # Construct the farewell
  result <- paste0(farewell, ", ", name)

  # Add exclamation mark if requested
  if (exclamation) {
    result <- paste0(result, "!")
  } else {
    result <- paste0(result, ".")
  }

  # Print the farewell and return it invisibly
  cat(result, "\n")

  # Return the farewell
  invisible(result)
}
