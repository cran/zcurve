% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/main.R
\name{plot.zcurve}
\alias{plot.zcurve}
\title{Plot fitted z-curve object}
\usage{
\method{plot}{zcurve}(
  x,
  annotation = FALSE,
  CI = FALSE,
  extrapolate = FALSE,
  plot_type = "base",
  y.anno = c(0.95, 0.88, 0.78, 0.71, 0.61, 0.53, 0.43, 0.35),
  x.anno = 0.6,
  cex.anno = 1,
  ...
)
}
\arguments{
\item{x}{Fitted z-curve object}

\item{annotation}{Add annotation to the plot. Defaults
to \code{FALSE}.}

\item{CI}{Plot confidence intervals for the estimated z-curve. Defaults
to \code{FALSE}.}

\item{extrapolate}{Scale the chart to the extrapolated area. Defaults
to \code{FALSE}.}

\item{plot_type}{Type of plot to by produced. Defaults to \code{"base"}
for th base plotting function. An alternative is \code{"ggplot"} for a
ggplot2.}

\item{y.anno}{A vector of length 8 specifying the y-positions
of the individual annotation lines relative to the figure's height.
Defaults to \code{c(.95, .88, .78, .71, .61, .53, .43, .35)}}

\item{x.anno}{A number specifying the x-position of the block
of annotations relative to the figure's width.}

\item{cex.anno}{A number specifying the size of the annotation text.}

\item{...}{Additional arguments including \code{main}, \code{xlab},
\code{ylab}, \code{xlim}, \code{ylim}, \code{cex.axis}, \code{cex.lab}}
}
\description{
Plot fitted z-curve object
}
\examples{
\dontrun{
# simulate some z-statistics and fit a z-curve
z <- abs(rnorm(300,3))
m.EM <- zcurve(z, method = "EM", bootstrap = 100)

# plot the z-curve
plot(m.EM)

# add annotation text and model fit CI
plot(m.EM, annotation = TRUE, CI = TRUE)

# change the location of the annotation to the left
plot(m.EM, annotation = TRUE, CI = TRUE, x_text = 0)
}
}
\seealso{
\code{\link[=zcurve]{zcurve()}}
}
