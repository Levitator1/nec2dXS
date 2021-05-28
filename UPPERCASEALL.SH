#!/usr/bin/bash

# gfortran and probably other compilers appear to expect the source files
# to be all uppercase, probably because all of the INCLUDE directives in 
# the source specify the filenames that way. So, we rename all the files
# uppercase, in keeping with the convention on ancient (DOS, etc.) systems.
# -JAB

for F in *
do

mv "$F" `echo "$F" | awk '{ print toupper($0) }'`

done

