#!/bin/bash
set -euo pipefail

# Note that the `unix_quick_reference.pdf` should be created manually by 
# by exporting the `unix_quick_reference.md` as a PDF from the 
# MacDown application on macOS _before_ running this script.

# Directory where cheatsheets will be copied to
DEST_DIR=../../docs/resources/
mkdir -p $DEST_DIR

# Render the Rmarkdown
Rscript -e "rmarkdown::render('unix_reference.Rmd')"

# Copy files
cp unix_reference.html ${DEST_DIR}
cp unix_quick_reference.pdf ${DEST_DIR}

