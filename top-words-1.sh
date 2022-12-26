#!/usr/bin/bash
NUM_words="$2"
Fichero="$1"
cat $Fichero | tr '[:upper:]' '[:lower:]' | grep -oE '\w+' | sort | uniq -c | sort -nr | head -n $NUM_words
