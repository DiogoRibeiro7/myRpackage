#' Say Goodbye
#'
#' This function prints a friendly farewell. It can be customized with
#' different names and languages.
#'
#' @param name Character string. The name to bid farewell to. Default is "world".
#' @param language Character string. The language for the farewell.
#'        Supported languages: "english" (default), "spanish", "french", "portuguese".
#' @param exclamation Logical. Whether to add an exclamation mark. Default is TRUE.
#'
#' @return A character string containing the farewell message.
#' @export
#'
#' @examples
#' goodbye()
#' goodbye("R Users")
#' goodbye("amigos", language = "spanish")
#' goodbye("mes amis", language = "french", exclamation = FALSE)
#'
#' @seealso \code{\link{hello}} for a greeting function
goodbye <- function(name = "world", language = "english", exclamation = TRUE) {
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

  # Select farewell based on language
  farewell <- switch(
    tolower(language),
    english = "Goodbye",
    spanish = "Adi\u00f3s", # Using Unicode escape for 'ó'
    french = "Au revoir",
    portuguese = "Adeus",
    # Default to English if language not supported
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
