#!/bin/bash
while getopts "t:" option;do
     case "${option}" in
     t) TEST=${OPTARG};;
     esac
done


#python json_to_csv.py dataset step_${TEST}_1129.txt step_${TEST}_1129.csv
#python json_to_csv.py dataset step_${TEST}_1130.txt step_${TEST}_1130.csv
#python json_to_csv.py dataset step_${TEST}_1101.txt step_${TEST}_1201.csv
#python json_to_csv.py dataset step_${TEST}_1202.txt step_${TEST}_1202.csv
#python json_to_csv.py dataset step_${TEST}_1203.txt step_${TEST}_1203.csv
#python json_to_csv.py dataset step_${TEST}_1204.txt step_${TEST}_1204.csv
#python json_to_csv.py dataset step_${TEST}_1205.txt step_${TEST}_1205.csv
#python json_to_csv.py dataset step_${TEST}_1206.txt step_${TEST}_1206.csv
#python json_to_csv.py dataset step_${TEST}_1207.txt step_${TEST}_1207.csv
#python json_to_csv.py dataset step_${TEST}_1208.txt step_${TEST}_1208.csv
#python json_to_csv.py dataset step_${TEST}_1209.txt step_${TEST}_1209.csv
#python json_to_csv.py dataset step_${TEST}_1210.txt step_${TEST}_1210.csv
#python json_to_csv.py dataset step_${TEST}_1211.txt step_${TEST}_1211.csv
#python json_to_csv.py dataset step_${TEST}_1212.txt step_${TEST}_1212.csv
python json_to_csv.py dataset step_${TEST}_1213.txt step_${TEST}_1213.csv

