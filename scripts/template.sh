#!/bin/bash -l
# template for bash script
# don't forget to chmod u+x template.sh

cd ~/Documents/Academic/Active_projects/project_template

R --vanilla --args data/template_R_data.txt output/template_R_output.txt scripts/R/template.R

