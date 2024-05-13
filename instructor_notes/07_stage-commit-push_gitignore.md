# Instructor Notes: stage/commit/push and `.gitignore` files

This document provides instructions for teaching stage/commit/push using GitKraken, which then transitions into staging/committing/pushing a `.gitignore` file that they modify during this activity.


## Learning goals

At the end of this activity, workshop attendees should be able to:

* Be able to stage, commit, and push changes from GitKraken
* Understand how to interpret file diffs in GitKraken
* Understand the purpose of a `.gitignore` file, how it influences `git`'s behavior, and how to write (modify) one
* [Optional and time-pending] Understand the purpose of `.gitkeep` files

## Part 1: Introduction to stage/commit/push

* At this time in the workshop, trainees will have written and run a shell script (`download-fastq.sh`) to curl a pair of large (>100 MB each) FASTQ files.
* The goal of this activity is to stage/commit/push the `download-fastq.sh` script, and then to modify an existing `.gitignore` file to ignore the too-large-for-github FASTQ files.

* Go through slides for git stage/commit/push here, stopping after the GitKraken screenshots.
* Note that several slides after these GitKraken screenshots include analogous screenshots for performing the same tasks on command line; these slides can be presented or skipped (and therefore provided as a reference for trainees) at the instructor's discretion.
* Then, alongside the trainees as an interactive demonstration, follow the procedure demonstrated in the slides to stage/commit/push the newly-written `download-fastq.sh` script.
* As part of this demonstration, show and explain the diff view in GitKraken and how to interpret it so the trainees understand how to look for changes on a more granular level.
    * In this case, the diff should show entirely _new_ lines for the brand new file, `download-fastq.sh`.
* After the commit has been pushed, instruct the trainees to navigate to their repositories in the browser so they can confirm that their changes were pushed and that their most recent commit appears in their remote.


### Part 2: `.gitignore` files

* Return to the slides to teach the concept of `.gitignore` files, including how this concept directly relates to the _large_ FASTQ files they just downloaded.
* The final slide in this section provides the text that should be in their `.gitignore` file, also shown below here:
  * Note that _all lines_ except the FASTQ-relevant lines are pre-populated in the `.gitignore` file, so they only need to add the FASTQ lines.

```sh
# Directory with large FASTQ files
data/raw/fastq/SRP255885/

# History files
.Rhistory
.RData
.Rproj.user
.Ruserdata

# macOS hidden file
.DS_Store
```



* After slides, instruct trainees to open a text editor and open the file `rrp-workshop-exercises/.gitignore`.
* Instruct trainees to modify their `.gitignore` file to ignore FASTQ, and then return to * GitKraken.
* Before staging this file, note the `.gitignore` file diff, which should the FASTQ lines added but no other changes.

* Once everyone has confirmed the diff looks appropriate for the intended changes, the trainees should _stage_ their `.gitignore` file.
* At this point, note that the FASTQ files are no longer shown in the list of "unstaged files;" this shift reveals the behavior of the `.gitignore` file.
* Commit and push the `.gitignore` file, and again instruct trainees to navigate to their repositories in the browser so they can see that they pushed properly.


### [OPTIONAL] Part 3: `.gitkeep` files

* Time-pending, this is also a nice opportunity to discuss `.gitkeep` files at a high-level, since directories `fastq/SRP255885/` (inside `data/raw/`) will not be pushed to the remote.
* Because `data/raw/.gitkeep` exists, however, this directory remains tracked _even though it is empty._
* If there is sufficient time, trainees are welcome to create a `.gitkeep` file inside of `fastq/` to preserve the spirit of that directory.
    * Since `data/raw/fastq/SRP255885/` is in the `.gitignore`, we can do this for `fastq/` but _not_ for the study ID directory `SRP255885/`
