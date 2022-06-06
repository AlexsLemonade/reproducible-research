# Instructor Notes: Stitching together scripts and notebooks



This document provides instructions for teaching how to use shell scripting to automatically run related scripts in order, "stitched" together. 

## Learning goals

At the end of this activity, workshop attendees should be able to:

* Understand how to render Rmarkdown documents/notebooks on the command line 
* Understand how shell scripts can be used to automate analyses
* Understand some limitations of shell scripting to automate analyses


## Activity


* At this point in the workshop, we will have introduced the contents of and and relationship between the two files: `analyses/mutation_counts/01_count-gene_mutations.R` and `analyses/mutation_counts/02_mutation-count-plots.Rmd`.
* The goal of this activity is to show how a shell script can be used to "stitch" together analysis files and automate the workflow.


* Instruct trainees to open their terminal and navigate to the `rrp-workshop-exercises/analyses/mutation_counts/` directory with `cd` (if they weren't there before), and then run the following code that:
  * Processes the Medulloblastoma MAF file with the R script
  * Renders the Rmarkdown notebook from the command line 
  * Note that the LGAT MAF file will likely have previously been run, but if it wasn't, run it here too!

    ```sh
    # cd into rrp-workshop-exercises/analyses/mutation_counts/ as needed

    # Have them confirm they are in the correct 
    #  directory before running this code
    pwd

    # First, have them run Medulloblastoma through the RScript:
    Rscript 01_count-gene-mutations.R --maf ../../data/processed/maf_files/Medulloblastoma.maf.tsv.gz --outfile Medulloblastoma_gene-mutations.tsv

    # As needed, run LGAT too:
    Rscript 01_count-gene-mutations.R --maf ../../data/processed/maf_files/LGAT.maf.tsv.gz --outfile LGAT_gene-mutations.tsv

    # Confirm the output file(s) was/were made and is/are _not empty_!
    ls -h
    
    # Now, run the notebook from the command line.
    #  During this, explain what `-e` does: It allows you to include
    #  a very short script (or generally "chunk of R code") directly from the command line
    #  without having to write that R script separately first.
    Rscript -e "rmarkdown::render('02_mutation-count-plots.Rmd')"
    ```

* Discuss with the trainees how we would like to run the _R script_ code on _all_ of the MAF files, and writing a shell script is a convenient way to accomplish this goal and maintain reproducibility by recording precise steps.
* This script is already provided in the `rrp-workshop-exercises` repository in the file `analyses/mutation_counts/00_run-mutation-counts.sh`.
* Instruct the trainees to open the script in a text editor, and discuss with trainees what each line in the script does.


* After any Q/A about the structure and contents of the shell script itself, go to the terminal and run it:

    ```sh
    bash 00_run-mutation-counts.sh
    ```

* At this point, there should be several outputs from this script, including one table for each MAF file in `analyses/mutation_counts/` and one figure for each of LGAT and Medulloblastoma in `plots/mutation_counts/`.

* Have them stage, commit, and push these result files using GitKraken to continue emphasizing GitHub usage.
* Again, integrated into stage/commit/push, instruct trainees to look at the file diffs so they understand the exact changes they made for this commit. 


## Post-script discussion

* Once the shell script has been discussed and run, have a general discussion with trainees about the _limitations_ of the shell script approach to workflows:
  * There are no checkpoints. 
    * With shell scripts, if the script fails or times out, you need to re-run *everything* (or modify the script somehow to work around failures)
  * Added new data files may mean rerunning everything
  * If there are a large number of data sets, only one is processed at a time ("serial processing", not parallel!)
    * There are ways to work around this with shell scripting, but it's more involved and still less robust than a workflow manager
  
* _Workflow managers_ like snakemake or nextflow can help mitigate these limitations!
  * _You'll usually need an in-depth understanding of shell scripting to use a workflow manager!_
  * Checkpoints - in other workflow managers, you can "pick up" where you left off (or where you errored out).
  * Parallel processing of datasets
