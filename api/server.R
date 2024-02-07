library(dplyr)
library(plumber)

pr <- plumber::plumb(file = "api.R");
args <- list(host = Sys.getenv("HOST"), port = as.numeric(Sys.getenv("PORT")));

if (packageVersion("plumber") >= "1.0.0") {
  pr$setDocs(TRUE)
} else {
  args$swagger <- TRUE
};

do.call(pr$run, args)
