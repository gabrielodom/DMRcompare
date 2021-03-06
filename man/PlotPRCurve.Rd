% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/6_Plot_Precision-Recall_Curves.R
\name{PlotPRCurve}
\alias{PlotPRCurve}
\title{Plot Precision-Recall Curves}
\usage{
PlotPRCurve(prCurves_ls, plotTitle = "default", new = TRUE,
  lineWidth = 1, colours = NULL)
}
\arguments{
\item{prCurves_ls}{A list of PR-curve objects}

\item{plotTitle}{The title of the plot.The default value of \code{"default"}
will make the plot title "Venn Diagram for mu = DELTA, rep = INDEX OF
SEED".}

\item{new}{Should the PR curves from this list form their own graph
(\code{TRUE}) or be added onto a previous PR-curve figure (\code{FALSE}).
Defaults to \code{TRUE}.}

\item{lineWidth}{The line width of each PR curve in the plot. Defaults to 1.}

\item{colours}{Optionally add your own colours for each line. Otherwise, the
colours are created with the \code{\link[grDevices]{hcl}} function.}
}
\value{
Nothing. A plot is created as a side effect.
}
\description{
Given a list of PR-curve objects as returned by the
   \code{\link{BuildPRcurve}} function, plot the precision-recall curve for
   each method in a shared figure.
}
\examples{
\dontrun{
   prCurves_0.4_100_ls <-
     BuildPRcurve(
       bestResultsDir = "best_cases_results/",
       delta = 0.4,
       seed = 100
     )

   PlotPRCurve(prCurves_0.4_100_ls)
}
}
