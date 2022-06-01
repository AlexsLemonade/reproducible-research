# Instructor Notes: Stitching together scripts and notebooks


At this point in the workshop, we will have discussed the contents of and and relationship between the two files: `analyses/mutation_counts/01_-_count_gene_mutations.R` and `analyses/mutation_counts/02_mutation-count-plots.Rmd`.
The goal of this activity is to show how a shell script can be used to "stitch" together analysis files and automate the workflow.

Instruct trainees to open their terminal and navigate to the `rrp-workshop-exercises/analyses/mutation_counts/` directory with `cd`, and then run the following so the trainees can see how to run a notebook directly from the command line.

```sh
# cd into rrp-workshop-exercises/analyses/mutation_counts/ as needed

# Have them confirm they are in the correct 
#  directory before running this code
pwd
  
Rscript -e "rmarkdown::render('02_mutation-count-plots.Rmd')"
```

Discuss with the trainees how we would like to run the _R script_ code on _all_ of the MAF files, and writing a shell script is a convenient way to accomplish this goal and maintain reproducibility by recording precise steps.
This script is already provided in the `rrp-workshop-exercises` repository in the file `analyses/mutation_counts/00_run-mutation-counts.sh`.
Instruct the trainees to open the script in a text editor, and discuss with trainees what each line in the script does.
After any Q/A about the structure and contents of the script itself, go to the terminal and run it:

```sh
bash 00_run-mutation-counts.sh
```

At this point, there should be several outputs from this script, including one table for each MAF file in `analyses/mutation_counts/` and one figure for each of LGAT and Medulloblastoma in `plots/`.

Have them add, commit, and push these result files using GitKraken to continue emphasizing GitHub usage.
Again, integrated into add/commit/push, instruct trainees to look at the file diffs so they understand the exact changes they made for this commit. 
