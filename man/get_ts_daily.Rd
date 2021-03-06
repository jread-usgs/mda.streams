% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_ts_daily.R
\name{get_ts_daily}
\alias{get_ts_daily}
\title{Bring one or more timeseries into R, merge them, and compute a daily
statistic}
\usage{
get_ts_daily(var_src, site_name, stat = mean, day_start = 4, day_end = 28,
  method = "approx", approx_tol = as.difftime(3, units = "hours"),
  on_local_exists = "skip", on_invalid = "stop")
}
\arguments{
\item{var_src}{a valid variable name for timeseries data (see 
\code{dplyr::select(dplyr::filter(var_src_codes, data_type=='ts'), 
var_src)})}

\item{site_name}{a valid mda.streams site (see \link{list_sites})}

\item{stat}{the function to apply to get the desired statistic. mean, sum,
max, function(x) {mean(x, na.rm=TRUE)}, etc. are all valid.}

\item{day_start}{the time (as numeric hours, possibly negative) relative to 
each date from which to collect dates and possibly daily doinit (DO.mod.1) 
values}

\item{day_end}{the time (as numeric hours, possibly >24) relative to each 
date from which to collect dates}

\item{method}{character specifying the combination method to use}

\item{approx_tol}{difftime. if method='approx', the maximum time interval 
over which an approximation will be used to fill in data gaps in the 
2nd:nth data argument to combine_ts (relative to the first argument)}

\item{on_local_exists}{character indicating what to do if the folder already 
contains a file with the intended download name}

\item{on_invalid}{character in \code{c("stop","warn")} indicating how to
handle invalid timeseries}
}
\description{
Downloads each file from SB if either (1) the file has not yet been
downloaded to the code{tempdir()} during this R session, or (2) 
\code{on_local_exists='replace'}. There's a small risk that the resulting ts 
will be out of date relative to ScienceBase, but the benefit is faster 
ts-getting.
}

