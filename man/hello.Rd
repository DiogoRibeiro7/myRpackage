\name{goodbye}
\alias{goodbye}
\title{Say Goodbye}
\usage{
goodbye(name = "world", language = "english", exclamation = TRUE)
}
\arguments{
\item{name}{Character string. The name to bid farewell to. Default is "world".}

\item{language}{Character string. The language for the farewell.
Supported languages: "english" (default), "spanish", "french", "portuguese".}

\item{exclamation}{Logical. Whether to add an exclamation mark. Default is TRUE.}
}
\value{
A character string containing the farewell message.
}
\description{
This function prints a friendly farewell. It can be customized with
different names and languages.
}
\examples{
goodbye()
goodbye("R Users")
goodbye("amigos", language = "spanish")
goodbye("mes amis", language = "french", exclamation = FALSE)
}
\seealso{
\code{\link{hello}} for a greeting function
}
