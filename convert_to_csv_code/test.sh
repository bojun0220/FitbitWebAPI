#!bin/bash
while getopts "t:m:d:" option;do
      case "${option}" in
     t) TEST=${OPTARG};;
     m) MONTH=${OPTARG};;  #2017-12-08
     esac
done
 
case $TEST in
"test3") curl -i -H "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI2NTdKWE0iLCJhdWQiOiIyMkNHWkoiLCJpc3MiOiJGaXRiaXQiLCJ0eXAiOiJhY2Nlc3NfdG9rZW4iLCJzY29wZXMiOiJyc29jIHJzZXQgcmFjdCBybG9jIHJ3ZWkgcmhyIHJudXQgcnBybyByc2xlIiwiZXhwIjoxNTQ1ODIyOTI3LCJpYXQiOjE1MjA5MDkwMzN9.0SkwcDZuV3JFcav_XYY6d4AtvW07P5pOBxCiSkHbNv8"  https://api.fitbit.com/1/user/-/activities/steps/date/${MONTH}/1d/1min/time/00:00:00/23:59:59.json -o step_${TEST}_${MONTH};; # step_test3_2017-12-08
 
"test4") curl -i -H "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI2NUJOM1kiLCJhdWQiOiIyMkNITEQiLCJpc3MiOiJGaXRiaXQiLCJ0eXAiOiJhY2Nlc3NfdG9rZW4iLCJzY29wZXMiOiJyc29jIHJzZXQgcmFjdCBybG9jIHJ3ZWkgcmhyIHJudXQgcnBybyByc2xlIiwiZXhwIjoxNTQ1ODIzNDgwLCJpYXQiOjE1MjA5MTQwODJ9.yf4c7RPJ6jgN2HX8Tf3agfruCycsNphcEC0-5_AyB4w" https://api.fitbit.com/1/user/-/activities/steps/date/${MONTH}/1d/1min/time/00:00/23:59:59.json -o step_${TEST}_${MONTH};;

 
"test5") curl -i -H "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI2NTJRM1oiLCJhdWQiOiIyMkNIODIiLCJpc3MiOiJGaXRiaXQiLCJ0eXAiOiJhY2Nlc3NfdG9rZW4iLCJzY29wZXMiOiJyc29jIHJhY3QgcnNldCBybG9jIHJ3ZWkgcmhyIHJudXQgcnBybyByc2xlIiwiZXhwIjoxNTQ1ODIzNjMwLCJpYXQiOjE1MjA5MTQ1MzB9.v_GUH_mquHCUloQsBvJKJffxj0h30wQongkxs9HHLCo" https://api.fitbit.com/1/user/-/activities/steps/date/${MONTH}/1d/1min/time/00:00:00/23:59:59.json -o step_${TEST}_${MONTH};;

 
"test6") curl -i -H "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI2NUJMNloiLCJhdWQiOiIyMkNIODgiLCJpc3MiOiJGaXRiaXQiLCJ0eXAiOiJhY2Nlc3NfdG9rZW4iLCJzY29wZXMiOiJyc29jIHJhY3QgcnNldCBybG9jIHJ3ZWkgcmhyIHJudXQgcnBybyByc2xlIiwiZXhwIjoxNTQ1ODIzNzE4LCJpYXQiOjE1MjA5MTQ0MDR9.eokyqkzikxzi2j8NUrB0d7buRfOgv63Iqy33uwi1qbA" https://api.fitbit.com/1/user/-/activities/steps/date/${MONTH}/1d/1min/time/00:00:00/23:59:59.json -o step_${TEST}_${MONTH};;

 
"test7") curl -i -H "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI2NTVKOTkiLCJhdWQiOiIyMkNIODYiLCJpc3MiOiJGaXRiaXQiLCJ0eXAiOiJhY2Nlc3NfdG9rZW4iLCJzY29wZXMiOiJyc29jIHJhY3QgcnNldCBybG9jIHJ3ZWkgcmhyIHJudXQgcnBybyByc2xlIiwiZXhwIjoxNTQ1ODIzODI3LCJpYXQiOjE1MjA5MTQ2MjN9.HRBLOI4KORj5xPHebGeQbpwsefl23zaqvDXYiWV3H14" https://api.fitbit.com/1/user/-/activities/steps/date/${MONTH}/1d/1min/time/00:00:00/23:59:59.json -o step_${TEST}_${MONTH};;

"test8") curl -i -H "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI2NVNaUVEiLCJhdWQiOiIyMkNIODkiLCJpc3MiOiJGaXRiaXQiLCJ0eXAiOiJhY2Nlc3NfdG9rZW4iLCJzY29wZXMiOiJyc29jIHJhY3QgcnNldCBybG9jIHJ3ZWkgcmhyIHJudXQgcnBybyByc2xlIiwiZXhwIjoxNTQ1ODIzOTEzLCJpYXQiOjE1MjA5MTQ3NDV9.yB-5SmPvO9A76xbaY8XpOzF-gjBma5xlJh9anw78SAI" https://api.fitbit.com/1/user/-/activities/steps/date/${MONTH}/1d/1min/time/00:00:00/23:59:59.json -o step_${TEST}_${MONTH};;

 
"test9") curl -i -H "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI2NVQ3U1QiLCJhdWQiOiIyMkNIOEMiLCJpc3MiOiJGaXRiaXQiLCJ0eXAiOiJhY2Nlc3NfdG9rZW4iLCJzY29wZXMiOiJyc29jIHJzZXQgcmFjdCBybG9jIHJ3ZWkgcmhyIHJudXQgcnBybyByc2xlIiwiZXhwIjoxNTQ1ODI0MDEwLCJpYXQiOjE1MjA5MTQ4MzF9.zWT2wxD5P3iq5j27X2xSgcl7kskZmWIPbACjvW5WLks" https://api.fitbit.com/1/user/-/activities/steps/date/${MONTH}/1d/1min/time/00:00:00/23:59:59.json -o step_${TEST}_${MONTH};;


"test10") curl -i -H "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI2NjNGN1QiLCJhdWQiOiIyMkNIOEoiLCJpc3MiOiJGaXRiaXQiLCJ0eXAiOiJhY2Nlc3NfdG9rZW4iLCJzY29wZXMiOiJyc29jIHJzZXQgcmFjdCBybG9jIHJ3ZWkgcmhyIHJwcm8gcm51dCByc2xlIiwiZXhwIjoxNTQ1NjUzMTQ0LCJpYXQiOjE1MjA5MTQ4OTJ9.ZVlONCwbUqUjoX2bibnIHjHTaz9jR_jJ7Qj_1-v-8kc" https://api.fitbit.com/1/user/-/activities/steps/date/${MONTH}/1d/1min/time/00:00:00/23:59:59.json -o step_${TEST}_${MONTH};; 
  
esac

python search_step.py ${MONTH} ${TEST}  


case $TEST in
"test3") curl -i -H "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI2NTdKWE0iLCJhdWQiOiIyMkNHWkoiLCJpc3MiOiJGaXRiaXQiLCJ0eXAiOiJhY2Nlc3NfdG9rZW4iLCJzY29wZXMiOiJyc29jIHJzZXQgcmFjdCBybG9jIHJ3ZWkgcmhyIHJudXQgcnBybyByc2xlIiwiZXhwIjoxNTQ1ODIyOTI3LCJpYXQiOjE1MTQyODY5Mjd9.3BOqXve_mmMRs5rrCyQchsulknBgmDWmUeYT7GKtF_A" https://api.fitbit.com/1/user/-/activities/heart/date/${MONTH}/1d/1min/time/00:00:00/23:59:59.json -o heart_${TEST}_${MONTH};;

"test4") curl -i -H "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI2NUJOM1kiLCJhdWQiOiIyMkNITEQiLCJpc3MiOiJGaXRiaXQiLCJ0eXAiOiJhY2Nlc3NfdG9rZW4iLCJzY29wZXMiOiJyc29jIHJzZXQgcmFjdCBybG9jIHJ3ZWkgcmhyIHJudXQgcnBybyByc2xlIiwiZXhwIjoxNTQ1ODIzNDgwLCJpYXQiOjE1MTQyODc0ODB9.I12qY1F-s7_zbCjqj4XjvIUwOQswTVEB_lN1_YCN1ck" https://api.fitbit.com/1/user/-/activities/heart/date/${MONTH}/1d/1min/time/00:00/10:00.json -o heart_${TEST}_${MONTH};;


"test5") curl -i -H "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI2NTJRM1oiLCJhdWQiOiIyMkNIODIiLCJpc3MiOiJGaXRiaXQiLCJ0eXAiOiJhY2Nlc3NfdG9rZW4iLCJzY29wZXMiOiJyc29jIHJzZXQgcmFjdCBybG9jIHJ3ZWkgcmhyIHJwcm8gcm51dCByc2xlIiwiZXhwIjoxNTQ1ODIzNjMwLCJpYXQiOjE1MTQyODc2MzB9.6qEwc_zPz-Mu_YFuzQrvNBdc8Mv6KBwgDllnO_KsGpI" https://api.fitbit.com/1/user/-/activities/heart/date/${MONTH}/1d/1min/time/00:00:00/23:59:59.json -o heart_${TEST}_${MONTH};;


"test6") curl -i -H "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI2NUJMNloiLCJhdWQiOiIyMkNIODgiLCJpc3MiOiJGaXRiaXQiLCJ0eXAiOiJhY2Nlc3NfdG9rZW4iLCJzY29wZXMiOiJyc29jIHJhY3QgcnNldCBybG9jIHJ3ZWkgcmhyIHJudXQgcnBybyByc2xlIiwiZXhwIjoxNTQ1ODIzNzE4LCJpYXQiOjE1MTQyODc3MTh9.l-36DWBntf97khhUrzRFdv1YqLcoY7eqTb1Lrrgf6dQ" https://api.fitbit.com/1/user/-/activities/heart/date/${MONTH}/1d/1min/time/00:00:00/23:59:59.json -o heart_${TEST}_${MONTH};;


"test7") curl -i -H "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI2NTVKOTkiLCJhdWQiOiIyMkNIODYiLCJpc3MiOiJGaXRiaXQiLCJ0eXAiOiJhY2Nlc3NfdG9rZW4iLCJzY29wZXMiOiJyc29jIHJzZXQgcmFjdCBybG9jIHJ3ZWkgcmhyIHJudXQgcnBybyByc2xlIiwiZXhwIjoxNTQ1ODIzODI3LCJpYXQiOjE1MTQyODc4Mjd9.TER_jBM7zVzPa5mJ87pk4uh7AK0D9VzhXgKN44KYj6E" https://api.fitbit.com/1/user/-/activities/heart/date/${MONTH}/1d/1min/time/00:00:00/23:59:59.json -o heart_${TEST}_${MONTH};;

"test8") curl -i -H "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI2NVNaUVEiLCJhdWQiOiIyMkNIODkiLCJpc3MiOiJGaXRiaXQiLCJ0eXAiOiJhY2Nlc3NfdG9rZW4iLCJzY29wZXMiOiJyc29jIHJhY3QgcnNldCBybG9jIHJ3ZWkgcmhyIHJwcm8gcm51dCByc2xlIiwiZXhwIjoxNTQ1ODIzOTEzLCJpYXQiOjE1MTQyODc5MTN9.etAS_qF0qZkNGnVOHXcuLvkcmiPAOmKQTgYWPIA4VXE" https://api.fitbit.com/1/user/-/activities/heart/date/${MONTH}/1d/1min/time/00:00:00/23:59:59.json -o heart_${TEST}_${MONTH};;


"test9") curl -i -H "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI2NVQ3U1QiLCJhdWQiOiIyMkNIOEMiLCJpc3MiOiJGaXRiaXQiLCJ0eXAiOiJhY2Nlc3NfdG9rZW4iLCJzY29wZXMiOiJyc29jIHJhY3QgcnNldCBybG9jIHJ3ZWkgcmhyIHJudXQgcnBybyByc2xlIiwiZXhwIjoxNTQ1ODI0MDEwLCJpYXQiOjE1MTQyODgwMTB9.pAQAzlpbCFGNSENc9AAFgAV9Fee8H4n1ryIhkhHHSh8" https://api.fitbit.com/1/user/-/activities/heart/date/${MONTH}/1d/1min/time/00:00:00/23:59:59.json -o heart_${TEST}_${MONTH};;

"test10") curl -i -H "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI2NjNGN1QiLCJhdWQiOiIyMkNIOEoiLCJpc3MiOiJGaXRiaXQiLCJ0eXAiOiJhY2Nlc3NfdG9rZW4iLCJzY29wZXMiOiJyc29jIHJzZXQgcmFjdCBybG9jIHJ3ZWkgcmhyIHJudXQgcnBybyByc2xlIiwiZXhwIjoxNTQ1NjUzMTQ0LCJpYXQiOjE1MTQxMTcxNDR9.jT48QfUsSRtw1KMXK5DNLegwxxrug5a8D8Q_v1kR-dE" https://api.fitbit.com/1/user/-/activities/heart/date/${MONTH}/1d/1min/time/00:00:00/23:59:59.json -o heart_${TEST}_${MONTH};;

esac
python search_heart.py ${MONTH} ${TEST}
python boost.py ${MONTH} ${TEST}


python json_to_csv.py dataset step_${TEST}_${MONTH}.txt step_${TEST}_${MONTH}.csv 
python json_to_csv.py dataset heart_${TEST}_${MONTH}_concate.txt heart_${TEST}_${MONTH}.csv


step="step_"${TEST}"_"${MONTH}".csv" #step=step_test3_2017-12-08.csv
heart="heart_"${TEST}"_"${MONTH}"_complement.csv" #heart=heart_test3_2017-12-08_replace.csv
output=${TEST}"_step_heart_"${MONTH}".csv" #output=test3_step_heart_2017-12-08.csv
OUTPUT=${MONTH}

#python replace.py ${OUTPUT} ${TEST}
python mkglobal.py ${MONTH} ${TEST}
python global.py ${MONTH} ${TEST}
python merge.py ${step} ${heart} ${output}
                   
