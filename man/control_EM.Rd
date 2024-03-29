% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/zcurve_EM.R
\name{control_EM}
\alias{control_EM}
\title{Control settings for the zcurve EM algorithm}
\arguments{
\item{model}{A type of model to be fitted, defaults to \code{"EM"}
for a z-curve with 7 z-scores centered components.}

\item{sig_level}{An alpha level of the test statistics, defaults to
\code{.05}}

\item{a}{A beginning of fitting interval, defaults to
\code{qnorm(sig_level/2,lower.tail = F)}}

\item{b}{An end of fitting interval, defaults to \code{5}}

\item{mu}{Means of the components, defaults to
\code{0:6}}

\item{sigma}{A standard deviation of the components, defaults to
\code{rep(1, length(mu))}}

\item{theta_alpha}{A vector of alpha parameters of a Dirichlet distribution
for generating random starting values for the weights, defaults to
\code{rep(.5, length(mu))}}

\item{theta_max}{Upper limits for weights, defaults to
\code{rep(1,length(mu))}}

\item{criterion}{A criterion to terminate the EM algorithm,
defaults to \code{1e-6}}

\item{criterion_start}{A criterion to terminate the starting phase
of the EM algorithm, defaults to \code{1e-3}}

\item{criterion_boot}{A criterion to terminate the bootstrapping phase
of the EM algorithm, defaults to \code{1e-5}}

\item{max_iter}{A maximum number of iterations of the EM algorithm
(not including the starting iterations) defaults to \code{10000}}

\item{max_iter_start}{A maximum number of iterations for the
starting phase of EM algorithm, defaults to \code{100}}

\item{max_iter_boot}{A maximum number of iterations for the
booting phase of EM algorithm, defaults to \code{100}}

\item{fit_reps}{A number of starting fits to get the initial
position for the EM algorithm, defaults to \code{100}}
}
\description{
All these settings are passed to the Expectation Maximization
fitting algorithm. All unspecified settings are set to the default value.
Setting \code{model = "EM"} sets all settings to the default
value irrespective of any other setting and fits z-curve as described in
\insertCite{zcurve2;textual}{zcurve}
}
\examples{
# to increase the number of starting fits
# and change the means of the mixture components

ctrl <- list(
   fit_reps  = 50,
   mu = c(0, 1.5, 3, 4.5, 6)
)
\dontrun{zcurve(OSC.z, method = "EM", control = ctrl)}

}
\references{
\insertAllCited{}
}
\seealso{
\code{\link[=zcurve]{zcurve()}}, \link{control_density}
}
