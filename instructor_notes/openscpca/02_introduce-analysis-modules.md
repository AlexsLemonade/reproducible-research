# Instructor Notes: Introduction to analysis modules Activity


## Learning goals

- Understand the structure of `OpenScPCA-analysis` analysis modules
- Learn how to explore and run modules, including environment setup
- Gain experience with the data download script

## Activity

Instructors will explain and demonstrate this activity while participants follow along.
We expect that participants will take all steps along with the instructor.
Before this activity, participants should have performed all set up to get started with an analysis on a Lightsail for Research instance.

### Part 1: Tour of the modules on GitHub

First, we'll orient participants to analysis modules in the browser:

- Navigate to GitHub where analysis modules are stored: <https://github.com/AlexsLemonade/OpenScPCA-analysis/tree/main/analyses> and
- Navigate to the docs <https://openscpca.readthedocs.io/en/latest/contributing-to-analyses/>
  - Show participants where they can find more information about creating and writing analysis modules, and compute/software requirements
  - Make sure to explain that the requirements pages also explain how to manage dependencies within modules
- Navigate to GitHub to show and explain the contents of the `hello-python` module: <https://github.com/AlexsLemonade/OpenScPCA-analysis/tree/main/analyses/hello-python>
  - Particularly focus on how documentation in the README relates to contents of the module itself
  - Discuss: What can we learn about the module from the README?

### Part 2: Prepare to run the `hello-python` module

According to the README instructions, we'll need to take two steps before running.
Participants should follow along and type/code with us to perform these steps:
  - Download data
  - Prepare the conda environment

#### Download data

- Introduce the data download script, including running `./download-data.py --help` to explain the full script usage
  - Emphasize the differences between running on LSfR vs locally:
    - Locally they will need to be signed into AWS with SSO
    - Locally they may need the `--profile` flag
  - Emphasize the `--dryrun` flag
  - Make sure to note that by default, only processed objects are downloaded, but this can be modified with `--include`
- Everyone should now run the download script three times (feel free to add more flags if there's time or interest).
The code below shows flags assuming we're running on LSfR, but if we're running locally we may need to add `--profile`.
  - Download test data for an opportunity to explain the benefits of developing with test data:
    ```bash
    ./download-data.py --format AnnData --projects SCPCP000001 --test-data
    ```
    - Before proceeding, look at the `data` folder structure after download; there should now be a `test` and `current` directory
  - Do a _dry run_ of a download:
    ```bash
    ./download-data.py --format AnnData --projects SCPCP000001 --dryrun
    ```
  - Download processed AnnData files from a single project for use with `hello-python`:
    ```bash
    ./download-data.py --format AnnData --projects SCPCP000001

    # or, if we are running locally and connectivity is an issue:
    ./download-data.py --format AnnData --samples SCPCS000001
    ```
  - Re-run the last command to show that existing data will not get re-downloaded:
    ```bash
    ./download-data.py --format AnnData --projects SCPCP000001 # or with --samples SCPCS000001
    ```
- Take some time to look at the `data` folder structure now that we've downloaded some real data
  - Explain that `current` always contains symlinks to whichever type of data (real or test) the script most recently invoked


#### Prepare the conda environment

Run the conda lines from the module's README:

```bash
cd analyses/hello-python
conda-lock install --name openscpca-hello-python conda-lock.yml

# first, list environments to confirm it was created
conda env list

# now we can activate the environment
conda activate openscpca-hello-python
```

### Part 3: Run the `hello-python` module

Now instructors and participants will all run the module together, following the instructions in its README.

First, make sure we are working in the correct conda environment, if this is not reflected in the terminal directly with `(openscpca-hello-python)` at the start of the prompt.
  - Noting that on LSfR we do expect that this will be shown in the prompt

```bash
# The openscpca-hello-python environment should have an asterisk next to it
conda env list
```

Now, run the module:

```bash
bash run_hello-python.sh
```

Briefly take note of the module's output to ensure it has been updated with this run.


### Part 4: Introduce the module creation script

The next activity will be to create an analysis module, so now instructors should briefly introduce the module creation script.

- Go through the docs together:
  - Analysis skeleton: <https://openscpca.readthedocs.io/en/latest/contributing-to-analyses/analysis-modules/>
  - (Briefly) script flags: <https://openscpca.readthedocs.io/en/latest/contributing-to-analyses/analysis-modules/creating-a-module/>
- Run `./create-analysis-module.py --help` to see and explain output
  - Note that there are more options than are explicitly described on the website
