# UNIX Reference
> Childhood Cancer Data Lab, Alex's Lemonade Stand Foundation



## UNIX Shortcuts and symbols


Shortcut/symbol | Description
----------|-----------------------------------------------------------
`Ctrl+C` | Kills current process/command. 
`tab` (tab key) | Autocomplete.
`↑` (up arrow)| Scroll back through previous commands in an interactive shell.
`~` (tidle) | Represents your home directory.
`.` | Represents the current directory you are in
`..` | Represents one directory backwards. <br><br> For example, the relative path `..` refers to "one directory back," the relative path `../..` refers to "two directories back," and so on.
`*`  | Wildcard symbol.
`|`  | Pipe symbol (located on the backslash key). Join a string of UNIX commands together into a "pipeline."
`>` and `>>` | Redirect ("send") output from the command line, for example to a file. <br><br> `>` will _overwrite_ the destination file, and `>>` will _append to_ the destination file.


## UNIX commands


+ **pwd**: **P**rint the **w**orking **d**irectory. Display the full path of the current/working directory

  ```sh
  # print the current directory
  pwd
  ```

+ `ls`: **L**i**s**t files and directories

  ```sh
  # List contents of working directory
  ls
  
  # List contents of a different directory
  ls path/to/directory/I/want/to/list
  
  # List files in long format with the -l flag`
  ls -l
  
  # Include hidden files/directories with the -a flag
  ls -a
  
  # Show "human-readable" file sizes with the -h flag
  ls -h
  ```
  
+ `cd`: **C**hange **d**irectory

  ```sh
  # Change directory to the given path
  cd path/where/I/want/to/go
  
  # Go one directory back in the hierarchy
  cd ..
  
  # Two ways to go to your home directory:
  cd 
  cd ~
  ```
  
+ `cp`: **C**o**p**y a file or directory.
  + The `cp` command does not change the original file. It is similar to "copy and paste."
  
  ```sh
  # Make a copy of oldfile.txt called newfile.txt
  cp oldfile.txt newfile.txt
  
  # Make a copy of the directory directory_original to be called directory_copy
  # Copying directories requires the -r flag
  cp -r directory_original directory_copy
  ```
  
+ `mv`: **M**o**v**e or rename a file or directory. 
  + The `mv` command _does_ change the original file. It is similar to "cut and paste."
  
  ```sh
  # Rename a file from oldname.txt to newname.txt
  mv oldfile.txt newfile.txt
  
  # Move file.txt into a new directory
  mv file.txt path/to/new/directory/file.txt
  ```
  
+ `touch`: Create an new (empty) file
  + When run on an existing file, the `touch` command updates its "last modified" date (it "touches" the file!)
  
  ```sh
  # Create a new file
  touch name_of_the_new_file_you_want_to_create.txt
  
  # Update modification date of existing file
  touch existing_file_to_update_modification.txt
  ```
  
+ `mkdir`: **M**a**k**e a new **dir**ectory

  ```sh
  # Create a new directory called new_directory
  mkdir new_directory
  
  # Use the -p flag to avoid errors if the directory already exists
  mkdir -p new_directory_that_might_already_have_been_created
  ```
  
+ `rm`:**R**e**m**ove a file or directory
  + **This is _permanent._** You cannot recover files deleted with `rm`
  
  ```sh
  # Permanently delete a file 
  rm file_I_dont_need.txt
  
  # Permanently delete a directory
  # Removing directories requires the -r flag
  rm -r directory_I_dont_need/
  ```
  
+ `echo`: Print

  ```sh
  # Print a message from a script
  echo "Running Step 2"
  ```
  
+ `man`: See a command's documentation in the **man**ual
  + _Caution_: The so-called "man pages" are not always very clear, but they are still often helpful, in particular for seeing different flags you can use with a command 
  + You can scroll through the documentation with up and down arrows, or with your mouse scroller
  + You can exit the documentation by typing `q`
  
  ```sh
  # See the documentation for the echo command
  man echo
  ```
  
+ `wc`: **W**ord **c**ount. Count the number of words, lines, characters, and/or bytes in a file 

  ```sh
  # Count all values (words, lines, characters, and bytes)
  wc file_I_want_to_count.txt
  
  # Only count the number of lines with the -l flag
  wc -l file_whose_lines_I_want_to_count.txt
  
  # Only count the number of words with the -w flag
  wc -w
  ```
  
+ `less`: View the contents of a file in the terminal
  + Note that this command was thusly named because it is an improved version of the related command `more`, which also shows file contents, and..."less is more."
  + You can scroll through the view with up and down arrows, or with your mouse scroller
  + You can exit the view by typing `q`
  
  ```sh
  # View a file's contents 
  less file_I_want_to_look_at.txt
  ```
  
+ `head`: Display the first ten lines of a file
  + Note that the corresponding `tail` command looks at the _last_ ten lines
  + The `tail` command is used exactly as `head`
  
  ```sh
  # See first 10 lines of a file
  head file_I_want_to_peek_at.txt
  
  # Use the -n flag to specify a different number of lines, 
  #  for example 20:
  head -n 20 file_I_want_to_peek_at.txt
  ```
  
+ `gzip`: Compress a file to `.gz` format 
  + The `gzip` command removes the original file and a creates a new file of the same name but with the added `.gz` extension
  
  ```sh
  # Compress very_big_file.txt and create very_big_file.txt.gz
  gzip very_big_file.txt
  
  # Use the -c flag and redirection to retain the original file
  gzip -c very_big_file.txt > very_big_file.txt.gz
  ```
  
+ `gunzip`: Decompress a `.gz`-compressed file
  + The `gunzip` command removes the original file and creates a new file of the same name but _without_ the added extension `.gz`
  
  ```sh
  # Decompress very_big_file.txt.gz and create very_big_file.txt
  gunzip very_big_file.txt.gz
  
  # Use the -c flag and redirection to retain the original file
  gunzip -c very_big_file.txt.gz > very_big_file.txt
  ```
  
+ `curl`:**C**lient **URL**. Download the contents of a file from a website or server 
  + By default, the downloaded file contents get sent to the command line directly (which you almost never want!)
  
  ```sh
  # Download and save an internet file, using redirection
  curl https://database.com/interesting_data.csv > interesting_data.csv
  
  # Use the -o flag to specify the output file, similar to redirection
  # Note that the destination filename is provided first!
  curl -o interesting_data.csv https://database.com/interesting_data.csv

  # Use the -O flag to automatically save a file as the same name as it 
  #  appears on the internet (here, interesting_data.csv)
  curl -O https://database.com/interesting_data.csv
  ```

