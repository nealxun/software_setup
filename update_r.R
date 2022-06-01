# objective: how to update R and r packages

# reference: https://www.linkedin.com/pulse/3-methods-update-r-rstudio-windows-mac-woratana-ngarmtrakulchol/

# step 1 download and install R manually. https://www.r-project.org/

# step 2 move all folders from your old R version to new R version.
# /Library/Frameworks/R.framework/Versions/x.xx/Resources/library

# step 3 Update the moved packages
update.packages(checkBuilt = TRUE)
# alternative way: in RStudio, go to tools -> check for package updates

# step 4 check status
version
packageStatus()


# to fix the data table single thread issue
# reference1: https://firas.io/post/data.table_openmp/
# reference2: https://stackoverflow.com/questions/40904488/openmp-r-and-macos#
# reference3 (recommended): https://github.com/Rdatatable/data.table/wiki/Installation#openmp-enabled-compiler-for-mac (recommend to use option 5)
# Under /Users/nealxun, press cmd+shift+period to see hidden files, 
# then under .R folder (case sensitive), create a Makevars file.
remove.packages("data.table")
# source version
# install.packages("data.table", type = "source",
#                  repos = "https://Rdatatable.gitlab.io/data.table")
# cran version
#install.packages("data.table")

# in terminal, run the codes below
# this method turns out to be successful on work computer, with gcc (option 5) info in Makevars file.
# this method also turns out to be successful on personal computer, with libomp (option 1) info in Makevars file.
# xcrun R -e 'install.packages("data.table", type = "source", repos = "https://Rdatatable.gitlab.io/data.table")'

data.table::getDTthreads()
library(data.table)


