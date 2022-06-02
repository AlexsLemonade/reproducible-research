# Instructor Notes: Project management with `renv`, and using feature branches

This overall activity relies broadly on two new concepts: i) using `renv` to manage R projects, and ii) branching and merging. 
This document provides instructions for teaching how to create and push to a feature branch, and subsequently merge into main.
The feature branch of interest here should contain a `renv.lock` file from `renv` setup. 

## Learning goals

At the end of this activity, workshop attendees should be able to:

- Understand the concept of `git` branches and how to make them
- Understand the concept of `git` merging and how to perform it within a given repository (not across forks)
  - Merge conflicts will _not_ be covered in depth, but we will mention it  


## Activity 

Begin with the "Project Management" slides to introduce `renv`.
Interactively demonstrate to trainees how to create a `renv.lock` file for their project.
Trainees should now all have a `renv.lock` file in their _main branch_, but they should _not_ stage/commit/push this file, because we are going to instruct them to include it in a _feature branch_ instead.
At this time, transition to the "Branch" slides to introduce the concepts of branching and merging.
After the slides, intreractively demonstrate how to create a new branch, which should be called something like `add-renv`.
Trainees should then stage/commit/push their `renv.lock` file to a remote branch, which will be created during the `push`.
GitKraken should now show diverged histories between `main` and `add-renv`.
Instruct trainees to navigate to their remote repositories in the browser to see their new branch pushed.
In particular, make sure trainees see the github message along the lines of "This branch 1 commit behind the main branch" inside the `add-renv` branch view.
Return to GitKraken to _merge_ this feature branch into their `main` branch, push to `main`, and then delete the _remote_ (and the local if preferred!) `add-renv` branch.
Finally, if the local branch was not deleted, ensure trainees end up in their `main` branch locally.
