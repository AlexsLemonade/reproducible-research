# Instructor Notes: R script content, usage & simple workflows with shell scripts

This document provides instructions for teaching about the script contents, followed by how to use shell scripting to automatically run related scripts in order, "stitched" together.

## Learning goals

At the end of this activity, workshop attendees should be able to:

* Examine the structure of provided shell scripts
* Run R scripts with arguments from the command line, including the use of `--help`
* Render R Markdown documents/notebooks on the command line
* Understand how shell scripts can be used to automate multi-step analyses
* Recognize some limitations of shell scripting to automate analyses

## Activity Part 1: Exploring & running the R script & notebook

At this point we will have completed a slide presentation that describes the R script and notebook contents.
This section is partially a review/reiteration of that content, followed by running the script on the command line.

* Have trainees navigate to the local copy of their github repository and open the `rrp-workshop-exercises.Rproj` file.
  * Point out the Project menu and discuss the project option settings for reproducibility (`.RData` saving and restore)
  * Take this opportunity to also explain the "line ending conversion" setting we have used in the project, which is to always convert to Posix.
  Explain that this is to prevent Windows from changing line endings such that code would no longer run on from the Ubuntu terminal (or any UNIX-like system), and it applies only to files opened within this RStudio project.

* In RStudio, have trainees open `analyses/mutation_counts/01_count-gene-mutations.R`
* Briefly walk through the components of the R script, including the following:
  * header comments
  * package imports
  * option setting & error checking
  * constants (note that in this case these are set after options)

* During the above (notably option setting) demonstrate usage of the R script
  * Point out `optparse` section, showing section for each flag
  * Show the help feature you get for free with options:

  ```sh
  cd analyses/mutation_counts # if needed

  Rscript 01_count-gene-mutations.R -h
  ```
  * Show the command running with correct options

  ```sh
  Rscript 01_count-gene-mutations.R --maf ../../data/processed/maf_files/LGAT.maf.tsv.gz --outfile LGAT_gene-mutations.tsv
  ```

  * Possibly: include a typo in the MAF file, and show the error message!

* Have the trainees open the rendered notebook `analyses/mutation_counts/02_mutation-count-plots.nb.html` in the browser.
  * Point out the lovely rendering that we get for free in this self-contained file!
  * Walk through components of the notebook (briefly)
    * setup block: ask what input files are required!
    * location of the function definitions
    * integrated plots
* Open source file (`analyses/mutation_counts/02_mutation-count-plots.Rmd`) in RStudio
  * Point out RStudio's "Restart R and Run All Chunks" option
  * Note that not all input files are present, so rendering may fail (Leads into the next part!)

## Activity Part 2: Stitching together parts

The goal of this activity is to show how a shell script can be used to "stitch" together analysis files and automate the workflow.


* Instruct trainees to open their terminal and navigate to the `rrp-workshop-exercises/analyses/mutation_counts/` directory with `cd` (if they weren't there before), and then run the following code that:
  * Processes the Medulloblastoma MAF file with the R script
  * Renders the R Markdown notebook from the command line
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

### Known foibles

Be aware of the following issues which have occurred during previous workshops and how to resolve them:

* Some participants were unable to render the notebook from the command line and/or run the `00_run-mutation-counts.sh` script because they did not have a standalone Pandoc install.
* Some participants on Windows (WSL 2) were unable to run scripts from the Ubuntu command line due to line-ending incompatibilities.
This occurs when the RStudio setting on Windows for line ending conversions is still set to "Platform Native" (RStudio's default), which in turn might occur because the participant is not working from the `rrp-workshop-exercises.Rproj` project specifically.
Participants will need to update their line-ending conversion setting and then re-save scripts:
  * Ensure participants are working from the `rrp-workshop-exercises.Rproj` project
  * Update the setting in `Project Options > Code Editing > Saving`.
  * Ensure line ending conversions are set to "Posix".
  Participants can re-save the file in RStudio to trigger the line endings to update, allowing them to run the script in Ubuntu.



## Post-script discussion

* Once the shell script has been discussed and run, have a general discussion with trainees about the _limitations_ of the shell script approach to workflows:
  * There are no checkpoints.
    * With shell scripts, if the script fails or times out, you need to re-run *everything* (or modify the script somehow to work around failures)
  * Added new data files may mean rerunning everything
  * If there are a large number of data sets, only one is processed at a time ("serial processing", not parallel!)
    * There are ways to work around this with shell scripting, but it's more involved and still less robust than a workflow manager

* _Workflow managers_ like snakemake or Nextflow can help mitigate these limitations!
  * _You'll usually need an in-depth understanding of shell scripting to use a workflow manager!_
  * Checkpoints - in other workflow managers, you can "pick up" where you left off (or where you errored out).
  * Parallel processing of datasets
