# "Project Organization for Reproducibility"


## Learning objectives

At the completion of this module, learners will be able to:

- Understand the importance of project organization for reproducibility
- Create a project directory with an example substructure including:
  - Separation between data, code, and results
  - Essential documentation for reproducibility
  - Files and folders with consistent & compatible naming
- Navigate directories and interpret file paths
  
## Why does file organization matter?

- Predictable organization makes it easier to find and share what you've done
- Searching for files is okay on the web, and for some kinds of documents, but fails when applied to data files, especially when metadata is separated.
- Scripts and software need to know where files are; the cleaner the project organization, the easier this will be to implement and adapt to new data.

## Creating a project directory

- Every project gets a new directory
- Common subfolders: `data`, `analysis`, `results`, `scripts`, `plots`
  - These are suggestions, not edicts! 

IDEA: Show creating the first of these from the Finder/Explorer; then in the UNIX section we can show navigation & adding more files. 

## Documenting as you go

- Create a `README` file right away (it might not say much at first)
- As the project evolves, document! 
  - What are the goals?
  - Where did the data come from, and when?
  - What software is needed? What version did you use?
  - How should the analysis steps be run?
- Document your code as well!
  - Comments
  - Structured documents with text, code, and results (notebooks)


## File and folder naming

- Jenny Bryan's principles https://speakerdeck.com/jennybc/how-to-name-files
  - Human readable
  - Machine readable 
  - Naturally sortable 
- use extensions (unhide them if you can!)


