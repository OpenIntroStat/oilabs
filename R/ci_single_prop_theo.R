#' Confidence interval for one proportion, using CLT based Z-interval
#' 
#' Helper for the `inference()` function
#' 
#' @param y Response variable, can be numerical or categorical
#' @param success which level of the categorical variable to call "success", 
#' i.e. do inference on
#' @param conf_level confidence level, value between 0 and 1
#' @param y_name Name of response variable as a character string (passed 
#' from inference function)
#' @param show_var_types print variable types, set to verbose by default
#' @param show_summ_stats print summary stats, set to verbose by default
#' @param show_eda_plot print EDA plot, set to verbose by default
#' @param show_inf_plot print inference plot, set to verbose by default
#' @param show_res print results, set to verbose by default

ci_single_prop_theo <- function(y, success, conf_level, y_name, 
                                show_var_types, show_summ_stats, show_res,
                                show_eda_plot, show_inf_plot){
  
  # calculate sample size
  n <- length(y) 
  
  # calculate p-hat
  p_hat <- sum(y == success) / n
  
  # find percentile associated with critical value
  perc_crit_value <- conf_level + ((1 - conf_level) / 2)
  
  # find critical value
  z_star <- qnorm(perc_crit_value)
  
  # calculate SE
  se <- sqrt(p_hat * (1 - p_hat) / n)
  
  # calculate ME
  me <- z_star * se
  
  # calculate CI
  ci <- p_hat + c(-1, 1) * me
  
  # print variable types
  if(show_var_types == TRUE){
    cat(paste0("Single categorical variable, success: ", success,"\n"))
  }

  # print summary statistics
  if(show_summ_stats == TRUE){
    cat(paste0("n = ", n, ", p-hat = ", round(p_hat, 4), "\n"))
  }

  # print results
  if(show_res == TRUE){
    conf_level_perc = conf_level * 100
    cat(paste0(conf_level_perc, "% CI: (", round(ci[1], 4), " , ", round(ci[2], 4), ")\n"))
  }

  # eda_plot
  d_eda <- data.frame(y = y)
  eda_plot <- ggplot2::ggplot(data = d_eda, ggplot2::aes(x = y), environment = environment()) +
    ggplot2::geom_bar(fill = "#8FDEE1") +
    ggplot2::xlab(y_name) +
    ggplot2::ylab("") +
    ggplot2::ggtitle("Sample Distribution")
  
  # print plots
  if(show_eda_plot){ print(eda_plot) }
  if(show_inf_plot){ warning("No inference plot available.") }
  
  # return
  return(list(SE = round(se, 4), ME = round(me, 4), CI = round(ci, 4)))
}