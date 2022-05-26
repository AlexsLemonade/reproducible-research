# Instructor Notes: Stitching together scripts and notebooks


At this point in the workshop, we will have discussed the contents of and and relationship between the two files `scripts/01-count_gene_mutations.R` and `scripts/02-SOMETHING.Rmd`.
The goal of this activity is to show how a shell script can be used to "stitch" together analysis files and automate the workflow.

Instruct trainees to open their terminal and navigate to the `rrp-workshop-exercises/scripts/` directory, and then run these commands in order:

```sh
# cd into rrp-workshop-exercises/scripts as needed

# Have them confirm they are in the correct 
#  directory before running this code
pwd
  
Rscript -e "rmarkdown::render('02_plotting-gene-mutations.Rmd')"
```

Discuss with the trainees how we would like to run the _R script_ code on _all_ of the MAF files, and writing a shell script is a convenient way to accomplish this goal and maintain reproducibility by recording precise steps.
This script is already provided in the `rrp-workshop-exercises` repository in the file `scripts/run-analysis.sh`.
Instruct the trainees to open the script in a text editor, and discuss with trainees what each line in the script does.
After any Q/A about the structure and contents of the script itself, go to the terminal and run it:

```sh
bash run-analysis.sh
```

At this point, there should be several outputs from this script, including one table for each MAF file in `analyses/` and one figure for each of LGAT and Medulloblastoma in `plots/`.

Have them add, commit, and push these result files using GitKraken to continue emphasizing GitHub usage.
