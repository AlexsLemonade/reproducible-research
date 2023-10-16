#!/usr/bin/env Rscript
#
# Run spell check and save results
# Adapted from: https://github.com/AlexsLemonade/training-modules/blob/72621ada8ecffc524e7fbbee78172dca9d0f5c85/scripts/spell-check.R

# Find .git root directory
root_dir <- rprojroot::find_root(rprojroot::has_dir(".git"))

# Read in dictionary
dictionary <- readLines(file.path(root_dir, 'components', 'dictionary.txt'))

# Add emoji to dictionary
dictionary <- c(dictionary,
  spelling::spell_check_text("⚠️")$word,
  spelling::spell_check_text("🎉")$word
)

# The only files we want to check are Markdown files
files <- list.files(
  path = "docs",
  pattern = '\\.md$',
  recursive = TRUE,
  full.names = TRUE
)

# Run spell check
spelling_errors <- spelling::spell_check_files(files, ignore = dictionary) |>
  data.frame() |>
  tidyr::unnest(cols = found) |>
  tidyr::separate(found, into = c("file", "lines"), sep = ":")

# Print out how many spell check errors
write(nrow(spelling_errors), stdout())

# Save spell errors to file temporarily
readr::write_tsv(spelling_errors, 'spell_check_errors.tsv')
