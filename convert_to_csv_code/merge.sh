#!/bin/bash

while getopts "o:t:" option;do
       case "${option}" in
       o) OUTPUT=${OPTARG};;
       t) TEST=${OPTARG};;
esac
done
  
  
step="step_"${TEST}"_"${OUTPUT}".csv"
heart="heart_"${TEST}"_"${OUTPUT}".csv"
output="output_"${TEST}"_"${OUTPUT}".csv"
 
python replace.py ${OUTPUT} ${TEST}  
python merge.py ${step} ${heart} ${output}

