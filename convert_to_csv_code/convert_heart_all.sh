#!/bin/bash
while getopts "t:" option;do
     case "${option}" in
     t) TEST=${OPTARG};;
     esac
done


#python json_to_csv.py dataset heart_${TEST}_1129.txt heart_${TEST}_1129.csv
#python json_to_csv.py dataset heart_${TEST}_1130.txt heart_${TEST}_1130.csv
#python json_to_csv.py dataset heart_${TEST}_1201.txt heart_${TEST}_1201.csv
#python json_to_csv.py dataset heart_${TEST}_1202.txt heart_${TEST}_1202.csv
#python json_to_csv.py dataset heart_${TEST}_1203.txt heart_${TEST}_1203.csv
#python json_to_csv.py dataset heart_${TEST}_1204.txt heart_${TEST}_1204.csv
#python json_to_csv.py dataset heart_${TEST}_1205.txt heart_${TEST}_1205.csv
#python json_to_csv.py dataset heart_${TEST}_1206.txt heart_${TEST}_1206.csv
#python json_to_csv.py dataset heart_${TEST}_1207.txt heart_${TEST}_1207.csv
#python json_to_csv.py dataset heart_${TEST}_1208.txt heart_${TEST}_1208.csv
#python json_to_csv.py dataset heart_${TEST}_1209.txt heart_${TEST}_1209.csv
#python json_to_csv.py dataset heart_${TEST}_1210.txt heart_${TEST}_1210.csv
#python json_to_csv.py dataset heart_${TEST}_1211.txt heart_${TEST}_1211.csv
#python json_to_csv.py dataset heart_${TEST}_1212.txt heart_${TEST}_1212.csv
python json_to_csv.py dataset heart_${TEST}_1213.txt heart_${TEST}_1213.csv

