#! /bin/bash
# script to list diffs under current directory, 
# for all checked out file, in unified diff format. 
#
# source taken from:
# http://my.opera.com/allbits/blog/a-simple-script-to-show-changes-with-diff-tool-in-unified-diff-format-made-in-cu

pushd .. > /dev/null
IFS_OLD=$IFS
IFS=$'\x0a'
for i in $(cleartool lsco -r -cview -fmt "%n %PVn\n")
do
    IFS=$IFS_OLD
    set -- $i
    file=$(echo $1 | sed "s/^\([\"']\)\(.*\)\1\$/\2/g")
#    echo $file
    file=$( readlink -f "$( dirname "$file" )" )/$( basename "$file" )
#    echo $file
    if [ -f $file ] ; then
#        echo $file
        diff -u $file@@$2 $file
    fi
done
popd > /dev/null

