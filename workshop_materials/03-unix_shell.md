# "UNIX and Basics of Scripting"

## Learning Objectives

At the completion of this module, learners will be able to:

+ Understand the importance of using command line to achieve reproducible project "workflows"
	+ In quotes because I don't mean actual workflow tools like snakemake
+ Perform fundamental tasks in navigating the command line, including UNIX
+ Understand what your bash profile file is and what the  `$PATH`  environment variable does, and be able to modify them
+ Automate running the same code on many files



## Why should you learn UNIX/scripting?

+ The following are from [Software carpentry Instructor Notes](https://swcarpentry.github.io/shell-novice/guide/) (_there are some good resources linked in here as well_)
	+ Allows users to automate repetitive tasks
	* Capture small data manipulation steps that are normally not recorded to make research reproducible
	* Running the same workflow on several samples can be unnecessarily labour intensive. 
	* Manual manipulation of data files:
		* is often not captured in documentation
		* is hard to reproduce
		* is hard to troubleshoot, review, or improve
	* Workflows can be automated through the use of shell scripts
	* Built-in commands allow for easy data manipulation (e.g. sort, grep, etc.)
	* Every step can be captured in the shell script and allow reproducibility and easy troubleshooting
* My bullets:
	+ You can record all your precise steps - you have typed them rather than "point-and-clicked" them
	+ Many bioinformatics/NGS tools are command-line only, which requires a certain level of comfort with interacting with terminal
		+ Running these tools yourself removes the mystery of what your core/bioinformatics collaborator is doing - take your science back into your own hands.
	+ Reduces the need for repetitive actions that are highly prone to human error
	+ Finally be able to view/interact with large data files that will otherwise crash your computer if opened in a GUI



## Concepts to introduce

+ Clarify terminology among: bash (zsh), shell, UNIX, Linux (Mac OSX as it was once known?), terminal
+ Terminology: stdin, stdout, stderr
+ Stephanie's greatest hits of UNIX (lots here is flexible!):
	+ `whoami`,`pwd`, `touch`, `cd`, `cp`, `ls`, `mv`, `rm`, `mkdir`, `clear`, `history`, `man`, `|`, `less` /`cat`/similar, `echo`
		+ Introduce flags in particular for `ls` , `rm`, `cp`, `mkdir`
		+ Wildcard `*`
		+ `~` home shortcut; `..` backwards
	+ Additional very good hits to potentially include:
		+ `grep`, `head`, `tail`, `sort`, `cut` 
		+ `sudo` _maybe_
	+ Shortcuts: `tab` autocomplete, up/down arrows, `ctl+c`, redirecting with `>` vs `>>`
		+ You cannot point/click to move the cursor position!
+ Light shell scripting
	+ How to organize and name your shell scripts
	+ Defining variables in shell scripting
	+ Stitching commands together in a script
	+ 	Command line arguments (_maybe?_)
	+ Introductory concepts in control flow, based around some activity we lead:
		+ We can introduce `if`  to demonstrate, for example, skipping a step if output is already present? Skipping a step based on an command line argument (if we do arguments)?
		+ We can introduce `for` to demonstrate, for example, looping over files in a directory
	+ If we introduce `#!`, then also introduce `chmod` and concepts of permissions


## Active learning components

+ Could potentially adapt Software Carpentry's [lesson](https://swcarpentry.github.io/shell-novice/) 
+ Idea: Provide them with a pre-populated file directory and tasks including:
	+ Practice formulating relative paths within the directory
		+ Potentially have them do this by hand _first_ if paths are very new
	+ Practice UNIX greatest hits
		+ _Ask : what exactly did you do?  In what order? Could you do it again from scratch exactly identically?_ The answer is probably not when typed directly, but probably YES if it were all in a shell script
	+ On a large delimited file, we can lead them through practicing the other good hits (`grep`, `sort`, etc.)
	+ _Could they curl a zip file_? We want to avoid `wget` since it doesn't come with Macs
		+ Or, could they clone a repo?











