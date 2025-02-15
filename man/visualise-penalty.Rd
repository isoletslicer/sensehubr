% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/visualise.R
\name{visualise-penalty}
\alias{visualise-penalty}
\alias{visualise.tbl_sensory_penalty}
\title{Visualise penalty}
\usage{
\method{visualise}{tbl_sensory_penalty}(res, product,
  frequency_threshold = 20, drop_threshold = 1,
  title = "Penalty analysis", xlab = "Citing frequency (\%)",
  ylab = "Mean of liking drop", ...)
}
\arguments{
\item{res}{output penalty analysis}

\item{product}{product of interest (only one product)}

\item{frequency_threshold}{threshold for citing frequency}

\item{drop_threshold}{threshold for iking drop}

\item{title}{a title to use in plot}

\item{xlab}{label for x-axis}

\item{ylab}{label for y-axis}

\item{...}{not yet implemented}
}
\value{
a ggplot object
}
\description{
Plot liking drop and citing frequency from penalty analysis.
}
\examples{
perfume_jar \%>\%
  specify(
    sensory_method = "JAR",
    panelist = consumer,
    product = product,
    attribute = intensity:green,
    hedonic = liking
  ) \%>\%
  analyse(choice = "penalty", ref_value = 0) \%>\% 
  visualise("Chanel N5")
}
