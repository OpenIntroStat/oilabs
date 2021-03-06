#' Confidence interval for two proportions, using bootstrapping
#' 
#' Helper for the `inference()` function
#' 
#' @param y Response variable, can be numerical or categorical
#' @param x Explanatory variable, categorical (optional)
#' @param success which level of the categorical variable to call "success", 
#' i.e. do inference on
#' @param conf_level confidence level, value between 0 and 1
#' @param nsim number of simulations
#' @param seed seed to be set, default is NULL
#' @param y_name Name of response variable as a character string (passed 
#' from inference function)
#' @param x_name Name of explanatory variable as a character string (passed 
#' from inference function)
#' @param boot_method bootstrap method; "perc" (percentile) or "se" (standard error)
#' @param show_var_types print variable types, set to verbose by default
#' @param show_summ_stats print summary stats, set to verbose by default
#' @param show_eda_plot print EDA plot, set to verbose by default
#' @param show_inf_plot print inference plot, set to verbose by default
#' @param show_res print results, set to verbose by default

ci_two_prop_sim <- function(y, x, success, conf_level, 
                            y_name, x_name, 
                            boot_method, nsim, seed,
                            show_var_types, show_summ_stats, show_res,
                            show_eda_plot, show_inf_plot){
  
  # set seed
  if(!is.null(seed)){ set.seed(seed) }
  
  # calculate n1 and n2
  ns <- by(y, x, length)
  n1 <- as.numeric(ns[1])
  n2 <- as.numeric(ns[2]) 
  
  # calculate p-hat1 and p-hat2
  p_hat1 <- sum(y[x == levels(x)[1]] == success) / n1
  p_hat2 <- sum(y[x == levels(x)[2]] == success) / n2
  
  # calculate difference in p-hats
  p_hat_diff <- p_hat1 - p_hat2
  
  # create bootstrap distribution
  y1 <- y[x == levels(x)[1]]
  y2 <- y[x == levels(x)[2]]
  
  sim_dist <- rep(NA, nsim)
  for(i in 1:nsim){
    boot_samp1 <- sample(y1, size = n1, replace = TRUE)
    boot_samp2 <- sample(y2, size = n2, replace = TRUE)
    boot_phat1 <- sum(boot_samp1 == success) / n1
    boot_phat2 <- sum(boot_samp2 == success) / n2
    sim_dist[i] <- boot_phat1 - boot_phat2
  }
  
  # for percentile method
  if(boot_method == "perc"){
    # calculate quantile cutoffs based on confidence level
    lower_quantile <- (1-conf_level) / 2
    upper_quantile <- conf_level + lower_quantile
    
    # calculate quantiles of the bootstrap distribution
    ci_lower <- as.numeric(quantile(sim_dist, lower_quantile))
    ci_upper <- as.numeric(quantile(sim_dist, upper_quantile))
    
    # put CI together
    ci <- c(ci_lower, ci_upper)
  }
  
  # for standard error method
  if(boot_method == "se"){
    
    # find percentile associated with critical value
    perc_crit_value <- conf_level + ((1 - conf_level) / 2)
    
    # find critical value
    z_star <- qnorm(perc_crit_value)
    
    # calculate SE
    se <- sd(sim_dist)
    
    # calculate ME
    me <- z_star * se
    
    # calculate CI
    ci <- p_hat_diff + c(-1, 1) * me
  }  
  
  # print variable types
  if(show_var_types == TRUE){
    n_x_levels <- length(levels(x))
    n_y_levels <- length(levels(y))
    cat(paste0("Response variable: categorical (", n_x_levels, " levels, success: ", success, ")\n"))
    cat(paste0("Explanatory variable: categorical (", n_y_levels, " levels) \n"))
  }
  
  # print summary statistics
  if(show_summ_stats == TRUE){
    gr1 <- levels(x)[1]
    gr2 <- levels(x)[2]
    cat(paste0("n_", gr1, " = ", n1, ", p_hat_", gr1, " = ", round(p_hat1, 4), "\n"))
    cat(paste0("n_", gr2, " = ", n2, ", p_hat_", gr2, " = ", round(p_hat2, 4), "\n"))
  }
  
  # print results
  if(show_res == TRUE){
    conf_level_perc = conf_level * 100
    cat(paste0(conf_level_perc, "% CI (", gr1 ," - ", gr2,"): (", round(ci[1], 4), " , ", round(ci[2], 4), ")\n"))
  }
  
  # eda_plot
  d_eda <- data.frame(y = y, x = x)
  
  if(which(levels(y) == success) == 1){ 
    fill_values = c("#1FBEC3", "#8FDEE1") 
  } else {
    fill_values = c("#8FDEE1", "#1FBEC3") 
  }
  
  eda_plot <- ggplot2::ggplot(data = d_eda, ggplot2::aes(x = x, fill = y), environment = environment()) +
    ggplot2::geom_bar() +
    ggplot2::scale_fill_manual(values = fill_values) +
    ggplot2::xlab(x_name) +
    ggplot2::ylab("") +
    ggplot2::ggtitle("Sample Distribution") +
    ggplot2::guides(fill = ggplot2::guide_legend(title = y_name))
  
  # inf_plot
  d_inf <- data.frame(sim_dist = sim_dist)
  inf_plot <- ggplot2::ggplot(data = d_inf, ggplot2::aes(x = sim_dist), environment = environment()) +
    ggplot2::geom_histogram(fill = "#CCCCCC", binwidth = diff(range(sim_dist)) / 20) +
    ggplot2::annotate("rect", xmin = ci[1], xmax = ci[2], ymin = 0, ymax = Inf, 
             alpha = 0.3, fill = "#FABAB8") +
    ggplot2::xlab("bootstrap differences in proportions") +
    ggplot2::ylab("") +
    ggplot2::ggtitle("Bootstrap Distribution") +
    ggplot2::geom_vline(xintercept = ci, color = "#F57670", lwd = 1.5)
  
  # print plots
  if(show_eda_plot & !show_inf_plot){ 
    print(eda_plot)
  }
  if(!show_eda_plot & show_inf_plot){ 
    print(inf_plot)
  }
  if(show_eda_plot & show_inf_plot){
    gridExtra::grid.arrange(eda_plot, inf_plot, ncol = 2)
  }
  
  # return
  if(boot_method == "perc"){
    return(list(sim_dist = sim_dist, CI = ci))
  } else {
    return(list(sim_dist = sim_dist, SE = se, ME = me, CI = ci))
  }
  
}