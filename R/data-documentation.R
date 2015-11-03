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

#' Teachers evaluations at the University of Texas at Austin
#'
#' The data were gathered from end of semester student evaluations for a large
#' sample of professors from the University of Texas at Austin (variables beginning
#' with \code{cls}). In addition, six students rated the professors' physical
#' appearance (variables beginning with \code{bty}). (This is a slightly modified
#' version of the original data set that was released as part of the replication
#' data for Data Analysis Using Regression and Multilevel/Hierarchical Models
#' (Gelman and Hill, 2007).
#'
#' @format A data frame with 463 rows and 21 variables:
#' \describe{
#'   \item{score}{Average professor evaluation score: (1) very unsatisfactory - (5) excellent}
#'   \item{rank}{Rank of professor: teaching, tenure track, tenure}
#'   \item{ethnicity}{Ethnicity of professor: not minority, minority}
#'   \item{gender}{Gender of professor: female, male}
#'   \item{language}{Language of school where professor received education: english or non-english}
#'   \item{age}{Age of professor}
#'   \item{cls_perc_eval}{Percent of students in class who completed evaluation}
#'   \item{cls_did_eval}{Number of students in class who completed evaluation}
#'   \item{cls_students}{Total number of students in class}
#'   \item{cls_level}{Class level: lower, upper}
#'   \item{cls_profs}{Number of professors teaching sections in course in sample: single, multiple}
#'   \item{cls_credits}{Number of credits of class: one credit (lab, PE, etc.), multi credit}
#'   \item{bty_f1lower}{Beauty rating of professor from lower level female: (1) lowest - (10) highest}
#'   \item{bty_f1upper}{Beauty rating of professor from upper level female: (1) lowest - (10) highest}
#'   \item{bty_f2upper}{Beauty rating of professor from second upper level female: (1) lowest - (10) highest}
#'   \item{bty_m1lower}{Beauty rating of professor from lower level male: (1) lowest - (10) highest}
#'   \item{bty_m1upper}{Beauty rating of professor from upper level male: (1) lowest - (10) highest}
#'   \item{bty_m2upper}{Beauty rating of professor from second upper level male: (1) lowest - (10) highest}
#'   \item{bty_avg}{Average beauty rating of professor}
#'   \item{pic_outfit}{Outfit of professor in picture: not formal, formal}
#'   \item{pic_color}{Color of professor's picture: color, black & white}
#' }
#' @source These data appear in Hamermesh DS, and Parker A. 2005. Beauty in the
#' classroom: instructors pulchritude and putative pedagogical productivity. Economics of Education Review
#'  24(4):369-376.
"evals"

#' Major League Baseball team data
#'
#' Data from all 30 Major League Baseball teams from the 2011 season.
#'
#' @format A data frame with 30 rows and 12 variables:
#' \describe{
#'   \item{team}{Team name.}
#'   \item{runs}{Number of runs.}
#'   \item{at_bats}{Number of at bats.}
#'   \item{hits}{Number of hits.}
#'   \item{homeruns}{Number of home runs.}
#'   \item{bat_avg}{Batting average.}
#'   \item{strikeouts}{Number of strikeouts.}
#'   \item{stolen_bases}{Number of stolen bases.}
#'   \item{wins}{Number of wins.}
#'   \item{new_onbase}{Newer variable: on-base percentage, a measure of
#'   how often a batter reaches base for any reason other than a fielding error,
#'   fielder's choice, dropped/uncaught third strike, fielder's obstruction, or
#'   catcher's interference.}
#'   \item{new_slug}{Newer variable: slugging percentage, popular measure of the
#'   power of a hitter calculated as the total bases divided by at bats.}
#'   \item{new_ops}{Newer variable: on-base plus slugging, calculated as the sum of the on-base and slugging percentages.}
#' }
#' @source \href{http://www.mlb.com/}{mlb.com}
"mlb11"

#' Atheism in the world data
#'
#' Survey results on atheism across several countries and years. Each row
#' represents a single respondent.
#'
#' @format A data frame with 88032 rows and 3 variables:
#' \describe{
#'   \item{nationality}{Country of the individual surveyed.}
#'   \item{response}{A categorical variable with two levels: atheist and non-atheist.}
#'   \item{year}{Year in which the person was surveyed.}
#'   }
#' @source \href{http://www.wingia.com/web/files/richeditor/filemanager/Global_INDEX_of_Religiosity_and_Atheism_PR__6.pdf}{WIN-Gallup International Press Release}
"atheism"

#' Body Dimensions
#'
#' Body girth measurements and skeletal diameter measurements, as well as age,
#' weight, height and gender, are given for 507 physically active individuals -
#' 247 men and 260 women.
#'
#' @format A data frame with 507 rows and 25 variables.
#' \describe{
#'   \item{bia.di}{A numerical vector, respondent's biacromial diameter in centimeters.}
#'   \item{bii.di}{A numerical vector, respondent's biiliac diameter (pelvic breadth) in centimeters.}
#'   \item{bit.di}{A numerical vector, respondent's bitrochanteric diameter in centimeters.}
#'   \item{che.de}{A numerical vector, respondent's chest depth in centimeters, measured between spine and sternum at nipple level, mid-expiration.}
#'   \item{che.di}{A numerical vector, respondent's chest diameter in centimeters, measured at nipple level, mid-expiration.}
#'   \item{elb.di}{A numerical vector, respondent's elbow diameter in centimeters, measured as sum of two elbows.}
#'   \item{wri.di}{A numerical vector, respondent's wrist diameter in centimeters, measured as sum of two wrists.}
#'   \item{kne.di}{A numerical vector, respondent's knee diameter in centimeters, measured as sum of two knees.}
#'   \item{ank.di}{A numerical vector, respondent's ankle diameter in centimeters, measured as sum of two ankles.}
#'   \item{sho.gi}{A numerical vector, respondent's shoulder girth in centimeters, measured over deltoid muscles.}
#'   \item{che.gi}{A numerical vector, respondent's chest girth in centimeters, measured at nipple line in males and just above breast tissue in females, mid-expiration.}
#'   \item{wai.gi}{A numerical vector, respondent's waist girth in centimeters, measured at the narrowest part of torso below the rib cage as average of contracted and relaxed position.}
#'   \item{nav.gi}{A numerical vector, respondent's navel (abdominal) girth in centimeters, measured at umbilicus and iliac crest using iliac crest as a landmark.}
#'   \item{hip.gi}{A numerical vector, respondent's hip girth in centimeters, measured at at level of bitrochanteric diameter.}
#'   \item{thi.gi}{A numerical vector, respondent's thigh girth in centimeters, measured below gluteal fold as the average of right and left girths.}
#'   \item{bic.gi}{A numerical vector, respondent's bicep girth in centimeters, measured when flexed as the average of right and left girths.}
#'   \item{for.gi}{A numerical vector, respondent's forearm girth in centimeters, measured when extended, palm up as the average of right and left girths.}
#'   \item{kne.gi}{A numerical vector, respondent's knee diameter in centimeters, measured as sum of two knees.}
#'   \item{cal.gi}{A numerical vector, respondent's calf maximum girth in centimeters, measured as average of right and left girths.}
#'   \item{ank.gi}{A numerical vector, respondent's ankle minimum girth in centimeters, measured as average of right and left girths.}
#'   \item{wri.gi}{A numerical vector, respondent's wrist minimum girth in centimeters, measured as average of right and left girths.}
#'   \item{age}{A numerical vector, respondent's age in years.}
#'   \item{wgt}{A numerical vector, respondent's weight in kilograms.}
#'   \item{hgt}{A numerical vector, respondent's height in centimeters.}
#'   \item{sex}{A categorical vector, "m" if the respondent is male, "f" if female.}
#' }
#' @source \href{http://www.amstat.org/publications/jse/v11n2/datasets.heinz.html}{Heinz G, Peterson LJ, Johnson RW, Kerk CJ. 2003. Exploring Relationships in Body Dimensions. Journal of Statistics Education 11(2).}
"bdims"

#' Housing prices in Ames, Iowa
"ames"

#' North Carolina Births
#'
#' Data set on 1,000 randomly sampled births from the birth records released by
#' the state of North Carolina in 2004. This data set has been of interest to
#' medical researchers who are studying the relation between habits and practices
#' of expectant mothers and the birth of their children.
#'
#' @format A dataframe with 1000 rows and 13 variables.
#' \describe{
#'   \item{fage}{A numerical vector, father's age in years.}
#'   \item{mage}{A numerical vector, mother's age in years.}
#'   \item{mature}{Maturity status of mother.}
#'   \item{weeks}{A numerical vector, length of pregnancy in weeks.}
#'   \item{premie}{A categorical vector, whether the birth was classified as premature (premie) or full-term.}
#'   \item{visits}{Number of hospital visits during pregnancy.}
#'   \item{marital}{Whether mother is married or not married at birth.}
#'   \item{gained}{A numerical vector, weight gained by mother during pregnancy in pounds.}
#'   \item{weight}{A numerical vector, weight of the baby at birth in pounds}
#'   \item{lowbirthweight}{A categorical vector, whether baby was classified as low birthweight (low) or not (not low).}
#'   \item{gender}{Gender of the baby, female or male.}
#'   \item{habit}{A categorical vector, status of the mother as a nonsmoker or a smoker.}
#'   \item{whitemom}{A categorical vector, whether mom is white or not white.}
#' }
"nc"
