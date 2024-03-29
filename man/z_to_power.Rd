% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tools.R
\name{z_to_power}
\alias{z_to_power}
\title{Compute power corresponding to z-scores}
\usage{
z_to_power(
  z,
  alpha = 0.05,
  a = stats::qnorm(alpha/2, lower.tail = FALSE),
  two.sided = TRUE
)
}
\arguments{
\item{z}{A vector of z-scores}

\item{alpha}{Level of significance alpha}

\item{a}{Or, alternatively a z-score corresponding to \code{alpha}}

\item{two.sided}{Whether directionality of the effect size should be taken into account.}
}
\description{
A function for computing power of two-sided tests
corresponding to z-scores for a given significance level.
\code{alpha} (or corresponding cut-off z-score \code{a})
}
\examples{
# mean powers corresponding to the mean components of KD2
z_to_power(0:6, alpha = .05)
}
