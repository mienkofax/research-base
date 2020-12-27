install.packages("devtools", dependencies = TRUE, lib = "/usr/lib/R/site-library")
install.packages("randomForest", dependencies = TRUE, lib = "/usr/lib/R/site-library")

library(devtools)

devtools::install_github("jayjacobs/dga", lib = "/usr/lib/R/site-library", force=TRUE)
