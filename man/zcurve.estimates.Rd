% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tools.R
\name{zcurve.estimates}
\alias{zcurve.estimates}
\alias{ERR}
\alias{EDR}
\alias{ODR}
\alias{Soric}
\alias{file_drawer_ration}
\alias{expected_n}
\alias{missing_n}
\alias{significant_n}
\alias{included_n}
\title{z-curve estimates}
\usage{
ERR(object, round.coef = 3)

EDR(object, round.coef = 3)

ODR(object, round.coef = 3)

Soric(object, round.coef = 3)

file_drawer_ration(object, round.coef = 3)

expected_n(object, round.coef = 0)

missing_n(object, round.coef = 0)

significant_n(object)

included_n(object)
}
\arguments{
\item{object}{the z-curve object}

\item{round.coef}{rounding for the printed values}
}
\description{
The following functions extract estimates
from the z-curve object.
}
\details{
Technically, ODR, significant n, and included n
are not z-curve estimates but they are grouped in this
category for convenience.
}
\seealso{
\code{\link[=zcurve]{zcurve()}}
}
