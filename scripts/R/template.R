# R script template
# Assumes local environment (note what different environment otherwise)
# jby 2017.09.06 (initials and date of last edit)

# starting up ------------------------------------------------------------
# example of how to run the script non-interactively
# R --vanilla --args data/template_R_data.txt output/template_R_output.txt template.R

setwd("~/Documents/Academic/Active_projects/project_template")

require("tidyverse")

source("../shared/Rscripts/base.R") # my special mix of personal functions
source("../shared/Rscripts/base_graphics.R") # my special mix of personal functions

# parse the command line ------
arg1 = commandArgs(trailingOnly=T)[1]
arg2 = commandArgs(trailingOnly=T)[2]


#-------------------------------------------------------------------------
# read in data 
dat = read.csv(arg1, h=T, sep="\t")


#-------------------------------------------------------------------------
# do something to it

# write a function to operate on the data
funct <- function(dat){

dat$new = (dat$first + dat$second)/min(dat$third)

return(dat)
}

# run the function
out = funct(dat)


#-------------------------------------------------------------------------
# write out results

# a data file
write.table(out, arg2, sep="\t", col.names=T, row.names=F, quote=F)

# a figure
{cairo_pdf("figures/template_R_figure.pdf", width=5, height=4)

ggplot(out, aes(x=first, y=new, color=treat)) + geom_point() + geom_smooth(method="lm") + labs(x="Something random", y="Something else random", title="Random regression")

}
dev.off()