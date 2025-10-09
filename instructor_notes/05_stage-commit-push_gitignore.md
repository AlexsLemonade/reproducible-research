# Instructor Notes: stage/commit/push and `.gitignore` and `.gitkeep` files

This document provides instructions for teaching stage/commit/push using GitKraken, which then transitions into staging/committing/pushing `.gitignore` and `.gitkeep` files that they modify and add, respectively, during this activity.


## Learning goals

At the end of this activity, workshop attendees should be able to:

* Be able to stage, commit, and push changes from GitKraken
* Understand how to interpret file diffs in GitKraken
* Understand the purpose of a `.gitignore` file, how it influences `git`'s behavior, and how to write (modify) one
* (Optional; time-pending) Understand the purpose of `.gitkeep` files

### Part 1: Introduction to stage/commit/push

* At this time in the workshop, participants will have written and run a shell script (`download-fastq.sh`) to curl a pair of large (>100 MB each) FASTQ files.
* The goals of this activity are to:
	* Stage/commit/push the `download-fastq.sh` script,
	* To modify an existing `.gitignore` file to ignore the too-large-for-github FASTQ files
	* Create a placeholder for the `results/mutation_counts` directory with `results/mutation_counts/.gitkeep`
* After going through the slides, follow the procedure demonstrated in the slides to stage/commit/push the newly-written `download-fastq.sh` script.
* As part of this demonstration, show and explain the diff view in GitKraken and how to interpret them so the participants understand how to look for changes on a more granular level.
    * In this case, the diff should show entirely _new_ lines for the brand new file, `download-fastq.sh`.
* After the commit has been pushed, instruct the trainees to navigate to their repositories in the browser so they can confirm that their changes were pushed and that their most recent commit appears in their remote.


### Part 2: `.gitignore` files

* Instruct participants to open a text editor and open the file `rrp-workshop-exercises/.gitignore`.
* Instruct participants to modify their `.gitignore` file to ignore FASTQ, and then return to GitKraken.
	* Show two ways to ignore the FASTQ files:
		* Ignoring the directory
		* Using file extensions
	* Note that the FASTQ files "disappear" from GitKraken as we change `.gitignore`

```sh
# History files
.Rhistory
.RData
.Rproj.user
.Ruserdata

# macOS hidden file
.DS_Store

# Directory with large FASTQ files
data/raw/fastq/SRP255885/

# All FASTQ files, regardless of where they are in the repo
*.fastq
*.fastq.gz
```

* Before staging this file, note the `.gitignore` file diff, which should have added FASTQ lines but no other changes.
* Once everyone has confirmed the diff looks appropriate for the intended changes, the participants should _stage_ their `.gitignore` file.
* Commit and push the `.gitignore` file, and again instruct participants to navigate to their repositories in the browser so they can see that they pushed properly.


### [OPTIONAL] Part 3: `.gitkeep` files

In the slides, we will introduce the concept of `.gitkeep` files.

* Create `results/mutation_counts/.gitkeep`
	* `cd {root of the repository}`
	* `touch results/mutation_counts/.gitkeep`
* Stage/commit/push the `.gitkeep` file
* Navigate to the repository on GitHub.com to demonstrate that the file has been pushed.
