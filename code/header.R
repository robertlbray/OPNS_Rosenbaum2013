my.library <- '/Users/robertlbray/Dropbox/code/R/library'
.libPaths(my.library)
library('tidyverse')

c('reshape2', 'stringr', 'magrittr', 'plyr') %>%
  walk(~library(., character.only=TRUE))

dir('modules') %>% 
  walk(~source(paste('./modules/', ., sep="")))

var_save <- '../variables/'