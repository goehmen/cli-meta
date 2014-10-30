#!/bin/sh

# remove all elements that do not start with a lower case letter
# ^.[a-z].*$    or    grep '[a-z]'  or grep -v '[A-Z]'
#infile = asimp.txt

#sed -e '/^[a-z]/!d' asimp.txt>asimp.out
grep -e '^[a-z]' asimp.txt>asimp.out
echo $?

cmds=(`awk '{print $1}' ./asimp.out`)


for i in ${cmds[@]}; do
echo ${i}
done




# now preface each element of the array with 'cf ' and append with -h
# now run each cmd to get the help for each and push it into a file
