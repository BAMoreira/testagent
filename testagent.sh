#!/bin/bash
#Agent testing script by BAMoreira

TMPFILE=`mktemp`
echo $TMPFILE
echo start. | swipl -s agente002.pl > $TMPFILE 2>/dev/null
less < $TMPFILE
