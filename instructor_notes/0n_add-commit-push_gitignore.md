# Instructor Notes: Add/commmit/push and `.gitignore` files

This document provides instructions for teaching add(stage)/commit/push using GitKraken, which then transitions into adding(staging)/committing/pushing a `.gitignore` file that they create during this activity.

At this time in the workshop, trainees will have written and run a shell script (`download-fastq.sh`) to curl a pair of large (>100 MB each) FASTQ files.
The goal of this activity is to add(stage)/commit/push the `download-fastq.sh` script, and then to create a `.gitignore` file to ignore several common culprits (eg `.DS_Store`, `.RData`) as well as the too-large-for-github FASTQ files.



## Learning goals

At the end of this activity, workshop attendees should be able to:

+ Be able to add (stage), commit, and push changes from GitKraken 
+ Understand how to interpret file diffs in GitKraken 
+ Understand the purpose of a `.gitignore` file, how it influences `git`'s behavior, and how to write one

## Part 1: Introduction to add/commit/push

Go through slides for git add/commit/push here, stopping after the GitKraken screenshots. 
Note that several slides after these GitKraken screenshots include analogous screenshots for performing the same tasks on command line; these slides can be presented or skipped (and therefore provided as a reference for trainees) at the instructor's discretion.
Then, alongside the trainees as an interactive demonstration, follow the procedure demonstrated in the slides to add(stage)/commit/push the newly-written `download-fastq.sh` script. 
As part of this demonstration, show and explain the diff view in GitKraken and how to interpret it so the trainees understand how to look for changes on a more granular level.
In this case, the diff show show entirely _new_ lines for the brand new file, `download-fastq.sh`.
After the commit has been pushed, instruct the trainees to navigate to their repositories in the browser so they can confirm that their changes were pushed and that their most recent commit appears in their remote.


### Part 2: `.gitignore` files

Return to the slides to teach the concept of `.gitignore` files, including how this concept directly relates to the _large_ FASTQ files they just downloaded.
The final slide in this section provides the text they should include in their `.gitignore` files, also shown here:

```
data/raw/fastq/SRP255885/

.Rhistory
.RData
.Ruserdata
.Rproj.user
.DS_Store
```


After slides, instruct trainees to open a text editor and create a new file, which should be saved in the top-level of the repository: `rrp-workshop-exercises/.gitignore`.
Instruct trainees to type up their `.gitignore` file with these contents, and then return to GitKraken.
Have the trainees _stage_ their `.gitignore` file.
At this point, note that the FASTQ files are no longer shown in the list of "unstaged files;" this shift reveals the behavior of the `.gitignore` file.
Commit and push the `.gitignore` file, and again instruct trainees to navigate to their repositories in the browser so they can see that they pushed properly.
