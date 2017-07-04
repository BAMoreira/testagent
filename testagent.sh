#!/bin/bash
#Agent testing script by BAMoreira

TMPFILE=`mktemp`
echo $TMPFILE

#this is specifically configured to work with a single agent file as a submodule
#for the wumpus assignment
for AGENT in $( ls ../agente*.pl )
do
    echo start. | swipl -s ../$AGENT > $TMPFILE 2>/dev/null
    less < $TMPFILE
done
