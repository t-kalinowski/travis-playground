% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tf-ctrl-flow-wrappers.R
\name{tf_cond}
\alias{tf_cond}
\title{tf.cond}
\usage{
tf_cond(pred, true_fn, false_fn, name = NULL)
}
\arguments{
\item{pred}{R logical or a tensor.}

\item{true_fn, false_fn}{a \code{~} function, a function, or something coercible to
a function via \code{as.function}}

\item{name}{a string, passed on to \code{tf.cond()}}
}
\value{
if cond is a tensor, then the result of \code{tf.cond()}. Otherwise, if
\code{pred} is an \code{EagerTensor} or an R logical, then the result of either
\code{true_fn()} or \code{false_fn()}
}
\description{
This is a minimal wrapper around \code{tf$cond()} that allows you to supply
\code{true_fn} and \code{false_fn} as lambda functions defined using the tilde \code{~}.
}
\note{
in Tensorflow version 1, the \code{strict} keyword argument is supplied with
a value of \code{TRUE} (different from the default)
}
\examples{
\dontrun{
## square if positive
# using tf$cond directly:
raw <- function(x) tf$cond(x > 0, function() x * x, function() x)

# using tf_cond() wrapper
tilde <- function(x) tf_cond(x > 0, ~ x * x, ~ x)
}
}
