#!/bin/bash
if [ ! -f $1 ]; then
echo "No file found"
exit 1
fi
if ! [[ $2 =~ $intregex ]] ; then
echo "Second argument must be an integer"
exit 1
else
echo "Head"
head -n $2 $1
echo "Tail"
tail -n $2 $1
fi
