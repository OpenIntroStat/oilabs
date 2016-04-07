#' lab_report
#' 
#' @export

midterm <- function(highlight = "pygments", theme = "spacelab", css = "styles.css"){
  if(!require(rmarkdown))
    install.packages("rmarkdown", repos = "http://cran.rstudio.com")
  rmarkdown::html_document(highlight = highlight,
    theme = theme,
    css = css)
}