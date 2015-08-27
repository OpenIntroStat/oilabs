#' Male and female births in London
#'
#' Arbuthnot's data describes male and female christenings (births) for
#' London from 1629-1710.
#'
#' John Arbuthnot (1710) used these time series data to carry out the first
#' known significance test. During every one of the 82 years, there were more
#' male christenings than female christenings. As Arbuthnot wondered,
#' we might also wonder if this could be due to chance, or whether it meant
#' the birth ratio was not actually 1:1.
#'
#' @format A data frame with 82 rows and 3 variables:
#' \describe{
#'   \item{year}{year, ranging from 1629 to 1710}
#'   \item{boys}{number of male christenings (births)}
#'   \item{girls}{number of female christenings (births)}
#' }
#' @source These data are excerpted from the \code{\link[HistData]{Arbuthnot}}
#' data set in the HistData package.
"arbuthnot"

#' Male and female births in the US
#'
#' Counts of the total number of male and femals births in the United States from
#' 1940 to 2002.
#'
#' @format A data frame with 63 rows and 3 variables:
#' \describe{
#'   \item{year}{year, ranging from 1940 to 2002}
#'   \item{boys}{number of male births}
#'   \item{girls}{number of female births}
#' }
#' @source These data appear in Mathews TJ, and Hamilton BE. 2005. Trend
#' analysis of the sex ratio at birth in the United States. National Vital
#' Statistics Reports 53(20):1-17.
"present"

#' Behavioral survey
#'
#' This data set is a random sample of 20,000 people from the Behavioral Risk
#' Factor Surveillance System (BRFSS) survey conducted in 2000. While there
#' are over 200 questions or variables in the original data set, this one
#' only includes 9 variables.
#'
#' The BRFSS is an annual telephone survey of 350,000 people in the United
#' States collected by the Centers for Disease Control and Prevention (CDC).
#' As its name implies, the BRFSS is designed to identify risk factors in
#' the adult population and report emerging health trends. For example,
#' respondents are asked about their diet and weekly physical activity, their
#' HIV/AIDS status, possible tobacco use, and even their level of healthcare
#' coverage. The \href{http://www.cdc.gov/brfss/}{BRFSS Web site} contains a
#' complete description of the survey, the questions that were asked and even
#' research results that have been derived from the data.
#'
#' @format A data frame with 20,000 rows and 9 variables:
#' \describe{
#'    \item{genhlth}{A categorical vector indicating general health, with
#'    categories excellent, very good, good, fair, and poor}
#'    \item{exerany}{A categorical vector, 1 if the respondent exercised in
#'    the past month and 0 otherwise}
#'    \item{hlthplan}{A categorical vector, 1 if the respondent has some form
#'    of health coverage and 0 otherwise}
#'    \item{smoke100}{A categorical vector, 1 if the respondent has smoked at
#'    least 100 cigarettes in their entire life and 0 otherwise}
#'    \item{height}{A numerical vector, respondent's height in inches}
#'    \item{weight}{A numerical vector, respondent's weight in pounds}
#'    \item{wtdesire}{A numerical vector, respondent's desired weight in pounds}
#'    \item{age}{A numerical vector, respondent's age in years}
#'    \item{gender}{A numerical vector, respondent's gender}
#' }
#' @source These data are excerpted from the Behavioral Risk Factor Surveillance
#' System survey conducted by the CDC. For more information, see the
#' \href{http://www.cdc.gov/brfss/}{BRFSS Web site}.
"cdc"

#' Kobe Bryant basketball performance
#'
#' Data from the five games the Los Angeles Lakers played against the Orlando
#' Magic in the 2009 NBA finals.
#'
#' Each row represents a shot Kobe Bryant took during the five games of the
#' 2009 NBA finals. Kobe Bryant's performance earned him the title of Most
#' Valuable Player and many spectators commented on how he appeared to show
#' a hot hand.
#'
#' @format A data frame with 133 rows and 6 variables:
#' \describe{
#'   \item{vs}{A categorical vector, ORL if the Los Angeles Lakers played
#'   against Orlando}
#'   \item{game}{A numerical vector, game in the 2009 NBA finals}
#'   \item{quarter}{A categorical vector, quarter in the game, OT stands for
#'   overtime}
#'   \item{time}{A categorical vector, time at which Kobe took a shot}
#'   \item{description}{A categorical vector, description of the shot}
#'   \item{basket}{A categorical vector, H if the shot was a hit, M if the shot
#'   was a miss}
#' }
"kobe"
