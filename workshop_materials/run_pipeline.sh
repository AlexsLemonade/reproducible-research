#!/bin/bash

set -euo pipefail

Rscript --vanilla 01_count-gene-mutations.R

Rscript -e "rmarkdown::render('02_plot-gene-mutations.Rmd')"
