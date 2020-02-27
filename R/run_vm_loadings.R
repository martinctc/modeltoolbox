#' Run a varimax-rotated principal component analysis and extract loadings
#'
#' Uses `psych::principal()` and varimax rotation by default.
#' 
#' @param data Data containing only the numeric input variables.
#' @param nfactors Number of vectors to be passed through.
#' @importFrom psych principal
#' 
#' @examples
#' \dontrun{ 
#' library(tidyverse)
#' iris %>% select(-Species) %>% run_loadings(nfactors = 2)
#' }
#'@export
run_vm_loadings <- function(data, nfactors){
  
  data %>%
    psych::principal(nfactors = nfactors, rotate = "varimax") %>%
    loadings() %>%
    .[] %>%
    as_tibble(rownames = "predictors") %>%
    select(predictors, paste0("RC", 1:nfactors))
}

