# Instructor Notes: Stitching together scripts and notebooks


At this point in the workshop, we will have discussed the contents of and and relationship between the two files `scripts/01-count_gene_mutations.R` and `scripts/02-SOMETHING.Rmd`.
The goal of this activity is to show how a shell script can be used to "stitch" together analysis files and automate the workflow.

First, we will run the script/notebook in order from the command line on a single MAF file.
Instruct trainees to open their terminal and navigate to the `rrp-workshop-exercises/scripts/` directory, and then run these commands in order:

```sh
# cd into rrp-workshop-exercises/scripts as needed

# Have them confirm they are in the correct 
#  directory before running this code
pwd

Rscript 01_count-gene-mutations.R \ 
  --maf ../data/processed/maf_files/Medulloblastoma.maf.tsv.gz
  --outfile ../analyses/Medulloblastoma-gene_counts.tsv
  
Rscript -e "rmarkdown::render('02-SOMETHING-AND-MAYBE-IT-HAS-PARAMS?.Rmd')"
```

Using either Terminal or Finder/File Explorer, have a quick look at the new result files that were created in `analyses/`, which should include one table and one figure (TBD!!!!).

Discuss with the trainees how we would like to run this code on _all_ of the MAF files, and writing a shell script is a convenient way to accomplish this goal and maintain reproducibility.
This script is already provided in the `rrp-workshop-exercises` repository in the file `scripts/run-analysis.sh`.
Instruct the trainees to open the script in a text editor, and discuss with trainees what each line in the script does.
After any Q/A about the structure and contents of the script itself, go to the terminal and run it:

```sh
bash run-analysis.sh
```

There should be several outputs from this script, including one table and one figure for each MAF file which will have been saved in `analyses/`.

Have them add, commit, and push these new files using GitKraken to continue emphasizing GitHub usage.
