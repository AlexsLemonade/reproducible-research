# UNIX Cheatsheet

<br><br>

### UNIX commands

-----

Command | Description | Usage 
:-------|:-------------------------------------------------------------------------------------|:-----
`pwd` | **P**rint the **w**orking **d**irectory: Display the full path of the current/working directory | `pwd`
`ls` | **L**i**s**t files and directories |  `# List contents of working directory` <br> `ls` <br><br> `# List contents of a different directory` <br> `ls path/to/directory/I/want/to/list` <br><br> `# List files in long format with the -l flag` <br> `ls -l`  <br><br> `# Include hidden files/directories with the -a flag` <br> `ls -a` 
`cd` | **C**hange **d**irectory | `cd path/where/I/want/to/go`  <br><br> `# Go one directory back in the heirarchy` <br> `cd ..` <br><br>
`cp` | **C**o**p**y a file or directory <br> The original file is NOT changed, like "copy and paste"| `# Make a copy of oldfile.txt called newfile.txt` <br> `cp oldfile.txt newfile.txt`  <br><br> ` # Make a copy of the directory first_directory to be called second_directory` <br> `cp -r first_directory second_directory`
`mv` | **M**o**v**e or rename a file or directory. <br> The original file is changed, like "cut and paste" |  `# RENAME file from oldfile.txt to newfile.txt` <br> `mv oldfile.txt newfile.txt`  <br><br> `# MOVE oldfile.txt to live in the directory into_this_directory/`<br> `cp oldfile.txt into_this_directory/`  <br><br> `# MOVE oldfile.txt to live one directory back` <br> `cp oldfile.txt ..`
`touch` | Create an new (empty) file | `touch name_of_the_new_file_you_want_to_create.txt` 
`mkdir` | **M**a**k**e a new **dir**ectory | `# Create a new folder called new_directory` <br> `mkdir new_directory` <br><br> `# Use the -p flag to avoid errors if the directory already exists` <br> `mkdir -p new_directory_that_might_already_have_been_created`
`echo` | Print | `# Print a message from a script` <br> `echo "Running Step 2"`
`rm` | **R**e**m**ove a file or directory <br> **This is _permanent._** You cannot recover files deleted with `rm`. | `# Permanently delete a file` <br> `rm file_I_dont_need.txt` <br><br> `# Permanently delete a directory` <br> `rm -r directory_I_dont_need/`
`wc` | **W**ord **c**ount: Count the number of words, lines, characters, and/or bytes in a file | `# Count all values` <br> `wc file_I_want_to_count.txt` <br><br> `# Only count the number of lines with the -l flag` <br> `wc -l file_whose_lines_I_want_to_count.txt` <br><br> `# Only count the number of words with the -w flag` <br> `wc -w file_whose_words_I_want_to_count.txt`
`gunzip` | Compress or expand a `.gz` file |  `# Expand a .gz file` <br> `gunzip my-very-big-fastq-file.fastq.gz` <br><br> `# Compress a file into .gz file` <br> `gunzip my-very-big-fastq-file.fastq` 
`curl` | **C**lient **URL**: Download the contents of a website |  `# Download and save an internet file and save ` <br> `curl https://interesting-web-content.com/interesting-file > file_to_save_interesting_web_content_in.txt` 
`less` | Explore the contents of a file in terminal <br> Use `q` to exit | `less file_I_want_to_look_at.txt`
`head` | Display the first ten lines of a file <br> Note that the corresponding `tail` command looks at the _last_ ten lines | `head file_I_want_to_peek_at.txt` <br><br> `# Use the -n flag to specify a different number of lines, for example 20:` <br> `head -n 20 file_I_want_to_peek_at.txt`
`grep` | **G**lobal **r**egular **e**xpression **p**arser: Tool to search for text in files, including with [regular expressions](https://en.wikipedia.org/wiki/Regular_expression) | `grep "text to search for" file_I_want_to_search_in.txt` <br><br> `# Use the -c flag to simply count the occurrences of the text` <br> `grep -c "text to search for" file_I_want_to_search_in.txt` <br><br> `# Use the -i flag to perform a case insensitive search` <br> `grep -i "case insensitive text to search for" file_I_want_to_search_in.txt`


<br>

### UNIX Shortcuts and symbols

-----

Shortcut/symbol | Description
----------|-----------------------------------------------------------
`Ctrl+C` | Kills current process/command. 
`tab` (tab key) | Autocomplete
`↑` (up arrow)| Scroll back through previous commands in an interactive shell
`~` (tidle) | Represents your home directory
`.` | Represents the current directory you are in
`..` | Represents one directory backwards. For example, the relative path `../..` means "two directories back"
`*`  | Wildcard symbol
`|`  | Pipe symbol (located on the backslash key). Join a string of UNIX commands together into a "pipeline"
`>` and `>>` | Redirect ("send") output from the command line, for example to a file. <br> `>` will _overwrite_ the destination file, and `>>` will _append to_ the destination file


