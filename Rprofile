##						Emacs please make this -*- R -*-
## empty Rprofile.site for R on Debian
##
## Copyright (C) 2008 Dirk Eddelbuettel and GPL'ed
##
## see help(Startup) for documentation on ~/.Rprofile and Rprofile.site

# ## Example of .Rprofile
# options(width=65, digits=5)
# options(show.signif.stars=FALSE)
# setHook(packageEvent("grDevices", "onLoad"),
#         function(...) grDevices::ps.options(horizontal=FALSE))
# .First <- function() cat("\n   Welcome to R!\n\n")
# .Last <- function() cat("\n Goodbye!\n\n)

# establish an alternative language
Sys.setenv(LANGUAGE="en")


# from the AER book by Zeileis and Kleiber
options(prompt="R> ", digits=4)
options(browserNLdisabled = TRUE,
        deparse.max.lines = 2)

# set default library
# .libPaths(c("~/libs/R",.libPaths()))
# libPath_def <- .libPaths()[grepl("R.framework", .libPaths())]
# .libPaths(c("~/libs/R", libPath_def))

# Repositories
options(repos=c("https://cloud.r-project.org",
                "https://mirror.las.iastate.edu/CRAN/")
)

# Add more packages on starup
#local({
#  old <- getOption("defaultPackages")
#  options(defaultPackages = c(old, "ggplot2", "dplyr", "lubridate","reshape2"))
#})

# load utilities file (or any other R script)
#if (file.exists("utilities.R")) {
#  source("utilities.R")
#}

# put something this is your .Rprofile to customize the defaults
setHook(packageEvent("grDevices", "onLoad"),
        function(...) grDevices::quartz.options(width = 4, height = 4,
                                                pointsize = 10))

# setHook(packageEvent("grDevices", "onLoad"),
#         function(...) grDevices::windows.options(width=8, height=8,
#                                                  xpos=0, pointsize=10,
#                                                  #type="nbcairo"))  # Cairo device
#                                                  #type="cairo"))    # other Cairo dev
#                                                  type="xlib"))      # old default

# From Vince Buffalo Github
.reset <- function() system(sprintf("kill -WINCH %d", Sys.getpid()))

# Save list of installe packages (for reinstalled purposes)
# from http://stackoverflow.com/questions/1401904/painless-way-to-install-a-new-version-of-r-on-windows
#library(utils)
#if (file.exists("~/libs/misc/R/packagelist.RData")) {
#    load("~/libs/misc/R/packagelist.RData") # includes a vector "pkgs"
#    installed <- pkgs %in% installed.packages()[, 'Package']
#    if (length(pkgs[!installed]) >=1) {
#        install.packages(pkgs[!installed])
#    }
#}
#
#.Last <- function() {
#  pkgs <- installed.packages()[,1]
#  if (length(pkgs) > length(installed)){
#      save(pkgs,file="~/libs/misc/R/packagelist.RData")
#  }
#}


### EOF
