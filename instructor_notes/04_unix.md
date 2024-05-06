# Instructor Notes: Introduction to UNIX Activity

This document provides instructions for teaching introductory UNIX after the completion of the UNIX slides.

## Learning goals

At the end of this activity, workshop attendees should be able to:

+ Be comfortable launching and typing commands in terminal
+ Navigate the command line with fundamental UNIX commands, primarily `cd`, `pwd`, and `ls`
+ Understand that flags can be used to modify


## Part 1: Introduction to the command line

At the conclusion of the UNIX slides, the instructor will screen share to walk trainees through a couple of key commands that build command-line comfort: `cd`, `pwd`, and `ls`.
The instructions below are meant as a guide for what the instructor will synchronously demonstrate while trainees follow along with the same commands on their own computer.

+ Prompt trainees to launch their terminal (either the `Terminal` app in MacOS, or the `Ubuntu` app in Windows with WSL), and explain the terminal itself:
  + What information is in the default prompt?
  + You can't point and click around - you need to use arrows to move the cursor.
+ Navigate to home directory
  + Windows users will need to navigate as follows to reach their _Windows file system home directory_: `/mnt/c/Users/<accountname>/`
  + MacOS users should not actually need to navigate; terminals should open by default in their home directory, unless they have set this up differently, in which case they already know UNIX anyways.
+ Confirm they are in their home directory with `pwd`, and discuss how to interpret the output of this command.
+ Prompt trainees to run `ls` in their home, and then show how output changes when using different flags `lah` one at a time and combined.
+ Prompt trainees to `cd` onto their Desktop, confirm arrival with `pwd`, and explore their own files with `ls`.
+ Prompt trainees to go _back home_ with `cd ..`, and confirm with `pwd`.
+ Prompt trainees to go into their Downloads directory, run `ls` and take stock of their Downloads folder!
  + This provides a useful moment for them to personally reflect on how files have been previously handled.
+ Prompt trainees to return to their Desktop (or Documents, which may have more fodder for this task) with `cd`, as a more involved path that goes backwards and forwards: `cd ../Desktop/` (`cd ../Documents/`)
  + This is also a good opportunity to show use of `tab` autocompletion
+ Once back on Desktop (Documents), run use `ls *.docx` (or some file extension they have on their Desktops that will be determined live!) to practice with wildcards.
+ Now, we need to ensure everyone has a directory like `Projects` or similar where they can keep all their projects moving forward.
  + Have them navigate to where they want this directory to be if it doesn't exist, and use `mkdir` to create it


_At this time, we break to learn about git(hub), and we clone the exercises repository._


