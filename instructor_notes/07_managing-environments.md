# Instructor Notes: Project management with `renv` and `conda`

This overall activity introduces tools for managing R package versions with `renv` and command line environments with `conda`.

After introducing these tools, we modify the `download-data.sh` script to include running `fastp` to trim the downloaded FASTQ files.'
The end result here is that we have two sets of changes:

- adding renv and its files to the project
- adding a conda environment to the project & modifying the script to use it

The following sections will use these two sets of changes to explore working with git branches.
(So don't do any git activities here!)

## Learning goals

At the end of this activity, workshop attendees should be able to:

* Understand how to use `renv` to manage R package versions in R projects
* Understand how to use `conda` to manage environments and packages in command line environments


## Activity


Begin with the "Managing packages and environments" slides to introduce `renv` and `conda`.

### renv setup demonstration

* Interactively demonstrate to trainees how to set up renv for their project using `renv::init()`.
* Show the created files, including `renv.lock`, updates to `.Rprofile`, and contents of the `renv` directory.
* Possibly note that `renv` adds its own `.gitignore` file!

### conda setup demonstration

* Create a new environment named `alsf-rrp` with `fastp` installed using `conda create -n alsf-rrp fastp`.
* Show how to activate the environment with `conda activate alsf-rrp`.
* Save the conda environment with `conda env export > environment.yml`.
* (Optional) Add FastQC to the environment with `conda install fastqc` and export again.
* Show how to deactivate the environment with `conda deactivate`.

### Add fastp to the download-fastq.sh script

* Add trimmed and reports directories to the `download-fastq.sh` script and update the `mkdir -p` command to create these directories.

```bash
TRIMMED_DIR="../data/trimmed/${STUDY_ID}"
REPORTS_DIR="../reports/fastp"

mkdir -p $FASTQ_DEST $TRIMMED_DIR $REPORTS_DIR
```

* Modify the file download blocks to only download the fastq files if they are not already present.
**Use the `-f` flag to check for the existence of each file.**

```bash
if [ ! -f "$FASTQ_DEST/$FASTQ_R1" ]; then
    ...
fi
```

* Add the fastp command to the script:
*
```bash
## Trim the files with fastp
fastp \
  --in1 $FASTQ_DEST/$FASTQ_R1 \
  --in2 $FASTQ_DEST/$FASTQ_R2 \
  --out1 $TRIMMED_DIR/$FASTQ_R1 \
  --out2 $TRIMMED_DIR/$FASTQ_R2 \
  --html "$REPORTS_DIR/${STUDY_ID}_report.html"
```

* Run the script to ensure that it works (and doesn't re-download the files).

* Trainees should now all have a `renv.lock` file and other renv-related changes in their _main branch_.
**Do not stage/commit/push any of these changes yet!**
