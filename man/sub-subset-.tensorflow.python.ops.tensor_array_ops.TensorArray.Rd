% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/methods.R
\name{[[<-.tensorflow.python.ops.tensor_array_ops.TensorArray}
\alias{[[<-.tensorflow.python.ops.tensor_array_ops.TensorArray}
\title{\code{TensorArray.write()}}
\usage{
\method{[[}{tensorflow.python.ops.tensor_array_ops.TensorArray}(ta, i, ..., name = NULL) <- value
}
\arguments{
\item{ta}{a tensorflow \code{TensorArray}}

\item{i}{something castable to an int32 scalar tensor. 0-based.}

\item{...}{Error if anything is passed to \code{...}}

\item{name}{A scalar string, name of the op}

\item{value}{The value to write.}
}
\description{
\code{TensorArray.write()}
}
\examples{
\dontrun{
ta <- tf$TensorArray(tf$float32, size = 5L)
for(i in 0:4)
  ta[[i]] <- i
ta$stack()

# You can use this to grow objects in graph mode
accuracies_log <- tf$TensorArray(tf$float32, size = 0L, dynamic_size=TRUE)
for(epoch in 0:4)
  accuracies_log[[epoch]] <- runif(1)
acc <- accuracies_log$stack()
acc
}
}
