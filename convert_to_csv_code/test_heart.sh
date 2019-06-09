#!bin/bash
while getopts "t:m:d:" option;do
      case "${option}" in
     t) TEST=${OPTARG};;
     m) MONTH=${OPTARG};;
     d) DATE=${OPTARG};;
     esac
done
 
case $TEST in
"test3") curl -i -H "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI2NTdKWE0iLCJhdWQiOiIyMkNHWkoiLCJpc3MiOiJGaXRiaXQiLCJ0eXAiOiJhY2Nlc3NfdG9rZW4iLCJzY29wZXMiOiJyc29jIHJzZXQgcmFjdCBybG9jIHJ3ZWkgcmhyIHJudXQgcnBybyByc2xlIiwiZXhwIjoxNTQ1ODIyOTI3LCJpYXQiOjE1MjA5MDkwMzN9.0SkwcDZuV3JFcav_XYY6d4AtvW07P5pOBxCiSkHbNv8" https://api.fitbit.com/1/user/-/activities/steps/date/2017-${MONTH}-${DATE}/1d/1min/time/00:00:00/23:59:59.json -o heart_${TEST}_${MONTH}${DATE};;
 
"test4") curl -i -H "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI2NUJOM1kiLCJhdWQiOiIyMkNITEQiLCJpc3MiOiJGaXRiaXQiLCJ0eXAiOiJhY2Nlc3NfdG9rZW4iLCJzY29wZXMiOiJyc29jIHJzZXQgcmFjdCBybG9jIHJ3ZWkgcmhyIHJudXQgcnBybyByc2xlIiwiZXhwIjoxNTQ1ODIzNDgwLCJpYXQiOjE1MjA5MTQwODJ9.yf4c7RPJ6jgN2HX8Tf3agfruCycsNphcEC0-5_AyB4w" https://api.fitbit.com/1/user/-/activities/steps/date/2017-${MONTH}-${DATE}/1d/1min/time/00:00/10:00.json -o heart_${TEST}_${MONTH}${DATE};;

 
"test5") curl -i -H "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI2NTJRM1oiLCJhdWQiOiIyMkNIODIiLCJpc3MiOiJGaXRiaXQiLCJ0eXAiOiJhY2Nlc3NfdG9rZW4iLCJzY29wZXMiOiJyc29jIHJhY3QgcnNldCBybG9jIHJ3ZWkgcmhyIHJudXQgcnBybyByc2xlIiwiZXhwIjoxNTQ1ODIzNjMwLCJpYXQiOjE1MjA5MTQ1MzB9.v_GUH_mquHCUloQsBvJKJffxj0h30wQongkxs9HHLCo" https://api.fitbit.com/1/user/-/activities/steps/date/2017-${MONTH}-${DATE}/1d/1min/time/00:00:00/23:59:59.json -o heart_${TEST}_${MONTH}${DATE};;

 
"test6") curl -i -H "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI2NUJMNloiLCJhdWQiOiIyMkNIODgiLCJpc3MiOiJGaXRiaXQiLCJ0eXAiOiJhY2Nlc3NfdG9rZW4iLCJzY29wZXMiOiJyc29jIHJhY3QgcnNldCBybG9jIHJ3ZWkgcmhyIHJudXQgcnBybyByc2xlIiwiZXhwIjoxNTQ1ODIzNzE4LCJpYXQiOjE1MjA5MTQ0MDR9.eokyqkzikxzi2j8NUrB0d7buRfOgv63Iqy33uwi1qbA" https://api.fitbit.com/1/user/-/activities/steps/date/2017-${MONTH}-${DATE}/1d/1min/time/00:00:00/23:59:59.json -o heart_${TEST}_${MONTH}${DATE};;

 
"test7") curl -i -H "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI2NTVKOTkiLCJhdWQiOiIyMkNIODYiLCJpc3MiOiJGaXRiaXQiLCJ0eXAiOiJhY2Nlc3NfdG9rZW4iLCJzY29wZXMiOiJyc29jIHJhY3QgcnNldCBybG9jIHJ3ZWkgcmhyIHJudXQgcnBybyByc2xlIiwiZXhwIjoxNTQ1ODIzODI3LCJpYXQiOjE1MjA5MTQ2MjN9.HRBLOI4KORj5xPHebGeQbpwsefl23zaqvDXYiWV3H14" https://api.fitbit.com/1/user/-/activities/steps/date/2017-${MONTH}-${DATE}/1d/1min/time/00:00:00/23:59:59.json -o heart_${TEST}_${MONTH}${DATE};;

"test8") curl -i -H "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI2NVNaUVEiLCJhdWQiOiIyMkNIODkiLCJpc3MiOiJGaXRiaXQiLCJ0eXAiOiJhY2Nlc3NfdG9rZW4iLCJzY29wZXMiOiJyc29jIHJhY3QgcnNldCBybG9jIHJ3ZWkgcmhyIHJudXQgcnBybyByc2xlIiwiZXhwIjoxNTQ1ODIzOTEzLCJpYXQiOjE1MjA5MTQ3NDV9.yB-5SmPvO9A76xbaY8XpOzF-gjBma5xlJh9anw78SAI" https://api.fitbit.com/1/user/-/activities/steps/date/2017-${MONTH}-${DATE}/1d/1min/time/00:00:00/23:59:59.json -o heart_${TEST}_${MONTH}${DATE};;

 
"test9") curl -i -H "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI2NVQ3U1QiLCJhdWQiOiIyMkNIOEMiLCJpc3MiOiJGaXRiaXQiLCJ0eXAiOiJhY2Nlc3NfdG9rZW4iLCJzY29wZXMiOiJyc29jIHJzZXQgcmFjdCBybG9jIHJ3ZWkgcmhyIHJudXQgcnBybyByc2xlIiwiZXhwIjoxNTQ1ODI0MDEwLCJpYXQiOjE1MjA5MTQ4MzF9.zWT2wxD5P3iq5j27X2xSgcl7kskZmWIPbACjvW5WLks" https://api.fitbit.com/1/user/-/activities/steps/date/2017-${MONTH}-${DATE}/1d/1min/time/00:00:00/23:59:59.json -o heart_${TEST}_${MONTH}${DATE};;


"test10") curl -i -H "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI2NjNGN1QiLCJhdWQiOiIyMkNIOEoiLCJpc3MiOiJGaXRiaXQiLCJ0eXAiOiJhY2Nlc3NfdG9rZW4iLCJzY29wZXMiOiJyc29jIHJzZXQgcmFjdCBybG9jIHJ3ZWkgcmhyIHJwcm8gcm51dCByc2xlIiwiZXhwIjoxNTQ1NjUzMTQ0LCJpYXQiOjE1MjA5MTQ4OTJ9.ZVlONCwbUqUjoX2bibnIHjHTaz9jR_jJ7Qj_1-v-8kc" https://api.fitbit.com/1/user/-/activities/steps/date/2017-${MONTH}-${DATE}/1d/1min/time/00:00:00/23:59:59.json -o heart_${TEST}_${MONTH}${DATE};; 
  
esac
python search_heart.py ${MONTH} ${DATE} ${TEST}


                      
