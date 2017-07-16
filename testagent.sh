#!/bin/bash
#Agent testing script by BAMoreira

TMPFILE=`mktemp`
echo $TMPFILE

#this is specifically configured to work with a single agent file as a submodule
#for the wumpus assignment
if [ "testagent" = "${PWD##*/}" ]
then
    ADIR=$(ls ../agente*.pl)
else
    ADIR=$(ls agente*.pl)
fi

for AGENT in $ADIR
do
swipl -s $AGENT -t start > $TMPFILE 2>/dev/null
    less < $TMPFILE
done
