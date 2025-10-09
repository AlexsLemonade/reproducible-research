# Instructor Notes: Working with Git Branches

This document provides instructions for teaching how to create and push to a feature branch, and then merge it into `main` locally.

## Learning goals

At the end of this activity, workshop attendees should be able to:

* Understand the concept of `git` branches and how to make them
* Manage more than one branch with independent sets of changes

## Before demonstration

Before the live demo, slides will introduce feature branches conceptually and why we use them, including informative branch names.
We will also introduce merge conflicts and, lightly, how to resolve them.

## Activity

### Creating a single branch

* After the Git part 2 slides, we will demonstrate how to create a new branch, which should be called something like `add-renv`.
* Trainees should then stage/commit/push the `renv` files to a remote branch, which will be created during the `push`.
* "Accidentally" include the `environment.yml` file as a second (or third) commit.
* GitKraken should now show diverged histories between `main` and `add-renv`.
* Instruct trainees to navigate to their remote repositories in the browser to see their new branch pushed.
  * In particular, make sure trainees see the github message along the lines of "This branch is 2 commits ahead of main" inside the `add-renv` branch view.
  * Point out the pull request button, but do not click it yet.

### Creating the second branch

Note that this section can be skipped if needed for time.

* Now return to GitKraken to create a separate branch for adding the conda environment.
* Create a branch off of `main` named `add-fastp`.
* Make a commit to add the changes to the `download-fastq.sh` script to use `fastp` and avoid redownloading files.
* "Realize" that the `environment.yml` addition should really be in this branch, and not in `add-renv`.
  * Cherry pick the `environment.yml` commit from `add-renv` to `add-conda`.
* Push changes in `add-fastp` to remote
* Check out the `add-renv` branch, revert the commit with `environment.yml` and push the changes to the remote.

### Merging changes

Following these steps, trainees should have two branches with the following changes:
* `add-renv` branch:
  * `renv.lock`
  * `renv`-created support files
* (assuming not skipped) `add-fastp` branch:
  * `environment.yml`
  * modified `download-fastq.sh` script

Trainees should merge one at a time in into the `main` branch from GitKraken, and then delete the remote (and local, if preferred) branches.
Instructors should emphasize that there are other types of project workflows, in particular for _collaborative projects_ with multiple contributors, where merging directly into `main` might not be preferred.
