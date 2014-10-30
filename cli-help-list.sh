#!/bin/sh
#set -x

# generate a list of commands by grabbing first word from every line of `cf help`

# create a array of lines of cf help output
foo=$(cf help)
echo "$foo">cf-help


# now remove trailing comma (,) where present
tr -d ",$" <cf-help >cf-cmds

# now remove two blanks where present
sed 's/^  *//' <cf-cmds >cf-cmds2

# Now remove all elements that do not start with a lower case letter
sed -e '/^[a-z]/!d' cf-cmds2>cf-cmds3



# todo: replace the files with an array

# trim first word from each line in array
cmds=(`awk '{print $1}' ./cf-cmds3`)

# loop and print to test - remove later
#for i in ${cmds[@]}; do
#  echo ${i}
#done

# now preface each element of the array with 'cf ' and append with -h
touch cf-help-run

for i in ${cmds[@]}; do
  echo "cf" $i "-h">>cf-help-run 
done

# now run each cmd to get the help for each and push it into a file

while read line
do
  $line>>cf-help-output
  echo "\n=========================================\n\n">>cf-help-output
done < cf-help-run

# now clean up files
rm cf-help
rm cf-cmds
rm cf-cmds2
rm cf-cmds3
rm cf-help-run
#rm cf-help-output
