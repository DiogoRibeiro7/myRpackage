\name{hello}
\alias{hello}
\title{Say Hello}
\usage{
hello(name = "world", language = "english", exclamation = TRUE, capitalize = FALSE)
}
\arguments{
\item{name}{Character string. The name to greet. Default is "world".}

\item{language}{Character string. The language for the greeting.
Supported languages: "english" (default), "spanish", "french", "portuguese", "german", "italian".}

\item{exclamation}{Logical. Whether to add an exclamation mark. Default is TRUE.}

\item{capitalize}{Logical. Whether to capitalize the first letter of the name. Default is FALSE.}
}
\value{
A character string containing the greeting.
}
\description{
This function prints a friendly greeting. It can be customized with
different names and languages.
}
\examples{
hello()
hello("R Users")
hello("amigos", language = "spanish")
hello("mes amis", language = "french", exclamation = FALSE)
hello("world", capitalize = TRUE)
}
\seealso{
\code{\link{goodbye}} for a farewell function
}
