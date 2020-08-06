# Rename a batch of DNG & JPG files
#
# https://stackoverflow.com/a/38022269/4963125
#
# setup "namelist.csv" with these columns:
#   - oldDNGname
#   - newDNGname
#   - oldJPGname
#   - newJPGname
#
#   e.g.: https://docs.google.com/spreadsheets/d/15QmkeLX7f4ThQimyilv5ahwjHrkMISlkTJVui6MKF5s/edit#gid=1073126401&range=A1
#

library(readr)
library(stringr)

namelist <- read_csv("namelist.csv")
 

all(file.exists(namelist$oldDNGname))
all(file.exists(namelist$oldJPGname))


for (i in 1:NROW(namelist)) {
  
  # file.rename(from = namelist$oldDNGname[i], to = namelist$newDNGname[i])
  # 
  # file.rename(from = namelist$oldJPGname[i], to = namelist$newJPGname[i])

  file.rename(from = namelist$newDNGname[i], to = namelist$new2DNGname[i])
  
  file.rename(from = namelist$newJPGname[i], to = namelist$new2JPGname[i])
  
  print(i)
  
}


all(file.exists(namelist$new2DNGname))
all(file.exists(namelist$new2JPGname))
