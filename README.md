# fileRenameR
an R script to rename a batch of files.

Note - not much error handling, so run with RStudio if necessary to check errors/typo's

## How to use this script:

1. Make a CSV called "namelist.csv" with these 2 columns:
    - **oldname** = a list of the old filenames (with their full filepath and full filename)
    - **newname** = a corresponding list of the new filenames (also with full filepath and name)

2. Save the CSV in this project directory, alongside the `fileRename.R` script

3. Run the `fileRename.R` script -- preferably from within RStudio (for the error-handling reason noted above)
