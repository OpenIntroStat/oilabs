% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_ss.R
\name{plot_ss}
\alias{plot_ss}
\title{Interactively visualize and calculate sum of squares}
\usage{
plot_ss(x, y, data, showSquares = FALSE, leastSquares = FALSE)
}
\arguments{
\item{x}{the name of numerical vector 1}

\item{y}{the name of numerical vector 2}

\item{data}{the dataframe in which x and y can be found}

\item{showSquares}{logical option to show boxes representing the squared
residuals}

\item{leastSquares}{logical option to bypass point entry and automatically
draw the least squares line}
}
\description{
An interactive function that will generate a scatterplot of two variables,
then allow the user to click the plot in two locations to draw a best fit
line. Residuals are drawn by default; boxes representing the squared
residuals are optional.
}
