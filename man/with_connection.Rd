% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/connection.R
\name{with_connection}
\alias{with_connection}
\alias{local_connection}
\title{Connections which close themselves}
\usage{
with_connection(con, code)

local_connection(con, .local_envir = parent.frame())
}
\arguments{
\item{con}{For \code{with_connection()} a named list with the connection(s) to
create. For \code{local_connection()} the code to create a single connection,
which is then returned.}

\item{code}{\code{[any]}\cr Code to execute in the temporary environment}

\item{.local_envir}{\code{[environment]}\cr The environment to use for scoping.}
}
\value{
\code{[any]}\cr The results of the evaluation of the \code{code}
  argument.
}
\description{
R file connections which are automatically closed.
}
\examples{
with_connection(list(con = file("foo", "w")), {
  writeLines(c("foo", "bar"), con)
})

read_foo <- function() {
  readLines(local_connection(file("foo", "r")))
}
read_foo()
}
\seealso{
\code{\link{withr}} for examples
}
