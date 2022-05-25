# Instructor Notes: Stitching together scripts and notebooks


At this point in the workshop, we will have discussed the contents of and and relationship between the two files `scripts/01-count_gene_mutations.R` and `scripts/02-SOMETHING.Rmd`.
The goal of this activity is to show how a shell script can be used to "stitch" together analysis files and automate the workflow.

The script is provided in the file `scripts/run-analysis.sh` in the `rrp-workshop-exercises` repository.
Instruct the trainees to open the script in a text editor.
Explain and discuss with trainees what each line in the script does.
After any Q/A about the structure and contents of the script itself, go to the terminal and run it:

```sh
# cd into rrp-workshop-exercises/scripts as needed

# Have them confirm they are in the correct 
#  directory before running the script
pwd 
bash run-analysis.sh
```

There should be several outputs from this script, including one table and one figure for each MAF file which will have been saved in `analyses/`.

Have them add, commit, and push these new files using GitKraken to continue emphasizing GitHub usage.
