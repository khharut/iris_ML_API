#!/bin/Rscript

library(plumber)
# 'plumber.R' is the location of the file shown above
pr("/app/plumber.R") %>% pr_run(port=9000, host="0.0.0.0")
