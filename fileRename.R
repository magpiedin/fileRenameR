# Rename a batch of DNG & JPG files
#
# https://stackoverflow.com/a/38022269/4963125
#
# setup "namelist.csv" with these columns:
#   - oldname
#   - newname
#
# This can also be adapted for paired image-file renaming if these columns are used instead:
#   (and if so -- need to tweak some lines below)
#   - oldDNGname
#   - oldJPGname
#   - newDNGname
#   - newJPGname
#
#   e.g.: https://docs.google.com/spreadsheets/d/15QmkeLX7f4ThQimyilv5ahwjHrkMISlkTJVui6MKF5s/edit#gid=1073126401&range=A1
#

library(readr)
library(stringr)

namelist <- read_csv("namelist.csv")


# check that filepaths exist & names are correct 
# NOTE - this can take a while for long lists
Sys.time()
namelist$exists <- ""
namelist$exists <- file.exists(namelist$oldname)
Sys.time()


# rename the files
# NOTE - test this on a few first, then run in full
if (all(namelist$exists)==TRUE) {

  for (i in 1:NROW(namelist)) {
  
    # file.rename(from = namelist$oldDNGname[i], to = namelist$newDNGname[i])
    # 
    # file.rename(from = namelist$oldJPGname[i], to = namelist$newJPGname[i])

    file.rename(from = namelist$oldname[i], to = namelist$newname[i])

    print(i)
  
    }
  
} else {
  
  print(paste("check file paths & names: ", paste(namelist[namelist$exists==FALSE,], collapse = "|")))
  
}


# check that filepaths exist & names are correct 
# NOTE - this can take a while for long lists
Sys.time()
namelist$newexists <- ""
namelist$newexists <- all(file.exists(namelist$newname))
Sys.time()

# namelist$newDNGexists <- ""
# namelist$newJPGexists <- ""
# namelist$newDNGexists <- all(file.exists(namelist$newDNGname))
# namelist$newJPGexists <- all(file.exists(namelist$newJPGname))
# Sys.time()
