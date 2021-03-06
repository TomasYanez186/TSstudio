% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/util_functions.R
\name{ts_reshape}
\alias{ts_reshape}
\title{Transform Time Series Object to Data Frame Format}
\usage{
ts_reshape(ts.obj, type = "wide", frequency = NULL)
}
\arguments{
\item{ts.obj}{a univariate time series object of a class "ts", "zoo", "xts", and the data frame family (data.frame, data.table, tbl, tibble, etc.) with a 
Date column and at least one numeric column. This function support time series objects with a daily, weekly, monthly or quarterly frequencies}

\item{type}{The reshape type - 

"wide" set the years as the columns and the cycle units (months or quarter) as the rows, or

"long" split the time object to year, cycle unit and value}

\item{frequency}{An integer, define the series frequency when more than one option is avaiable and the input is one of the data frame family. 
If set to NULL will use the first option by default when applicable - daily = c(7, 365)}
}
\description{
Transform time series object into data frame format
}
\examples{

data(USgas)
USgas_df <- ts_reshape(USgas)
}
