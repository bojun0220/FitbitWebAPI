#!bin/bash
while getopts "t:m:d:" option;do
      case "${option}" in
     t) TEST=${OPTARG};;   #2017-12-04
     y) MONTH=${OPTARG};;
     d) DATE=${OPTARG};;
     esac
done
 
case $TEST in
"test3") curl -i -H "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI2NTdKWE0iLCJhdWQiOiIyMkNHWkoiLCJpc3MiOiJGaXRiaXQiLCJ0eXAiOiJhY2Nlc3NfdG9rZW4iLCJzY29wZXMiOiJyc29jIHJhY3QgcnNldCBybG9jIHJ3ZWkgcmhyIHJudXQgcnBybyByc2xlIiwiZXhwIjoxNTE0NDgzMDU4LCJpYXQiOjE1MTM4NzgyNTh9.AgatYW1wOshXWXmXcFFy-DBd-l9-lK8xjFCjkPz2UN8" https://api.fitbit.com/1/user/-/activities/steps/date/2017-${MONTH}-${DATE}/1d/1min/time/00:00:00/23:59:59.json -o step_${TEST}_${MONTH}${DATE};;
 
"test4") curl -i -H "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI2NUJOM1kiLCJhdWQiOiIyMkNITEQiLCJpc3MiOiJGaXRiaXQiLCJ0eXAiOiJhY2Nlc3NfdG9rZW4iLCJzY29wZXMiOiJyc29jIHJzZXQgcmFjdCBybG9jIHJ3ZWkgcmhyIHJwcm8gcm51dCByc2xlIiwiZXhwIjoxNTE0MTg4NDg4LCJpYXQiOjE1MTM1ODM2ODh9.zb2KKt2Y-_MIj7PGdLgdrFEhPtGUeor6VU1hZ7XxK_w" https://api.fitbit.com/1/user/-/activities/steps/date/2017-${MONTH}-${DATE}/1d/1min/time/00:00/10:00.json -o step_${TEST}_${MONTH}${DATE};;

 
"test5") curl -i -H "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI2NTJRM1oiLCJhdWQiOiIyMkNIODIiLCJpc3MiOiJGaXRiaXQiLCJ0eXAiOiJhY2Nlc3NfdG9rZW4iLCJzY29wZXMiOiJyc29jIHJhY3QgcnNldCBybG9jIHJ3ZWkgcmhyIHJudXQgcnBybyByc2xlIiwiZXhwIjoxNTE0NzA4OTM5LCJpYXQiOjE1MTQxMDQxMzl9.x_Up6HIsYTOPXpNoFxw9BhzxHa0tvkeTph4HH4z4a1Y" https://api.fitbit.com/1/user/-/activities/steps/date/2017-${MONTH}-${DATE}/1d/1min/time/00:00:00/23:59:59.json -o step_${TEST}_${MONTH}${DATE};;

 
"test6") curl -i -H "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI2NUJMNloiLCJhdWQiOiIyMkNIODgiLCJpc3MiOiJGaXRiaXQiLCJ0eXAiOiJhY2Nlc3NfdG9rZW4iLCJzY29wZXMiOiJyc29jIHJzZXQgcmFjdCBybG9jIHJ3ZWkgcmhyIHJudXQgcnBybyByc2xlIiwiZXhwIjoxNTE0NzEwMTk0LCJpYXQiOjE1MTQxMDUzOTR9.HwSLSBVuJiIEAozX6e29tPlBR2AIo7-6H9CmegiUBz0" https://api.fitbit.com/1/user/-/activities/steps/date/2017-${MONTH}-${DATE}/1d/1min/time/00:00:00/23:59:59.json -o step_${TEST}_${MONTH}${DATE};;

 
"test7") curl -i -H "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI2NTVKOTkiLCJhdWQiOiIyMkNIODYiLCJpc3MiOiJGaXRiaXQiLCJ0eXAiOiJhY2Nlc3NfdG9rZW4iLCJzY29wZXMiOiJyc29jIHJhY3QgcnNldCBybG9jIHJ3ZWkgcmhyIHJudXQgcnBybyByc2xlIiwiZXhwIjoxNTE0NzExMzM4LCJpYXQiOjE1MTQxMDY4OTR9.jQOQLbkpTmqHoxcpWk0BZGZVUocgiTMeVLQmO46pyMw" https://api.fitbit.com/1/user/-/activities/steps/date/2017-${MONTH}-${DATE}/1d/1min/time/00:00:00/23:59:59.json -o step_${TEST}_${MONTH}${DATE};;

"test8") curl -i -H "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI2NVNaUVEiLCJhdWQiOiIyMkNIODkiLCJpc3MiOiJGaXRiaXQiLCJ0eXAiOiJhY2Nlc3NfdG9rZW4iLCJzY29wZXMiOiJyc29jIHJzZXQgcmFjdCBybG9jIHJ3ZWkgcmhyIHJudXQgcnBybyByc2xlIiwiZXhwIjoxNTE0NzExMTM3LCJpYXQiOjE1MTQxMDYzMzd9.5AWb7WWl9_pYn7uFzzKm97ub7VHAMQCBHxg4lTv48FQ" https://api.fitbit.com/1/user/-/activities/steps/date/2017-${MONTH}-${DATE}/1d/1min/time/00:00:00/23:59:59.json -o step_${TEST}_${MONTH}${DATE};;

 
"test9") curl -i -H "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI2NVQ3U1QiLCJhdWQiOiIyMkNIOEMiLCJpc3MiOiJGaXRiaXQiLCJ0eXAiOiJhY2Nlc3NfdG9rZW4iLCJzY29wZXMiOiJyc29jIHJhY3QgcnNldCBybG9jIHJ3ZWkgcmhyIHJudXQgcnBybyByc2xlIiwiZXhwIjoxNTE0NzIxMTIyLCJpYXQiOjE1MTQxMTYzMjJ9.YQELKrq1dtgo2ENsT2XrF6DoYIgWD_Zq0PH3nbtr3_4" https://api.fitbit.com/1/user/-/activities/steps/date/2017-${MONTH}-${DATE}/1d/1min/time/00:00:00/23:59:59.json -o step_${TEST}_${MONTH}${DATE};;


"test10") curl -i -H "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI2NjNGN1QiLCJhdWQiOiIyMkNIOEoiLCJpc3MiOiJGaXRiaXQiLCJ0eXAiOiJhY2Nlc3NfdG9rZW4iLCJzY29wZXMiOiJyc29jIHJzZXQgcmFjdCBybG9jIHJ3ZWkgcmhyIHJudXQgcnBybyByc2xlIiwiZXhwIjoxNTQ1NjUzMTQ0LCJpYXQiOjE1MTQxMTcxNDR9.jT48QfUsSRtw1KMXK5DNLegwxxrug5a8D8Q_v1kR-dE" https://api.fitbit.com/1/user/-/activities/steps/date/2017-${MONTH}-${DATE}/1d/1min/time/00:00:00/23:59:59.json -o step_${TEST}_${MONTH}${DATE};; 
  
esac

python search_step.py ${MONTH} ${DATE} ${TEST}  


case $TEST in
"test3") curl -i -H "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI2NTdKWE0iLCJhdWQiOiIyMkNHWkoiLCJpc3MiOiJGaXRiaXQiLCJ0eXAiOiJhY2Nlc3NfdG9rZW4iLCJzY29wZXMiOiJyc29jIHJhY3QgcnNldCBybG9jIHJ3ZWkgcmhyIHJudXQgcnBybyByc2xlIiwiZXhwIjoxNTE0NDgzMDU4LCJpYXQiOjE1MTM4NzgyNTh9.AgatYW1wOshXWXmXcFFy-DBd-l9-lK8xjFCjkPz2UN8" https://api.fitbit.com/1/user/-/activities/steps/date/2017-${MONTH}-${DATE}/1d/1min/time/00:00:00/23:59:59.json -o heart_${TEST}_${MONTH}${DATE};;

"test4") curl -i -H "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI2NUJOM1kiLCJhdWQiOiIyMkNITEQiLCJpc3MiOiJGaXRiaXQiLCJ0eXAiOiJhY2Nlc3NfdG9rZW4iLCJzY29wZXMiOiJyc29jIHJzZXQgcmFjdCBybG9jIHJ3ZWkgcmhyIHJwcm8gcm51dCByc2xlIiwiZXhwIjoxNTE0MTg4NDg4LCJpYXQiOjE1MTM1ODM2ODh9.zb2KKt2Y-_MIj7PGdLgdrFEhPtGUeor6VU1hZ7XxK_w" https://api.fitbit.com/1/user/-/activities/steps/date/2017-${MONTH}-${DATE}/1d/1min/time/00:00/10:00.json -o heart_${TEST}_${MONTH}${DATE};;


"test5") curl -i -H "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI2NTJRM1oiLCJhdWQiOiIyMkNIODIiLCJpc3MiOiJGaXRiaXQiLCJ0eXAiOiJhY2Nlc3NfdG9rZW4iLCJzY29wZXMiOiJyc29jIHJhY3QgcnNldCBybG9jIHJ3ZWkgcmhyIHJudXQgcnBybyByc2xlIiwiZXhwIjoxNTE0NzA4OTM5LCJpYXQiOjE1MTQxMDQxMzl9.x_Up6HIsYTOPXpNoFxw9BhzxHa0tvkeTph4HH4z4a1Y" https://api.fitbit.com/1/user/-/activities/steps/date/2017-${MONTH}-${DATE}/1d/1min/time/00:00:00/23:59:59.json -o heart_${TEST}_${MONTH}${DATE};;


"test6") curl -i -H "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI2NUJMNloiLCJhdWQiOiIyMkNIODgiLCJpc3MiOiJGaXRiaXQiLCJ0eXAiOiJhY2Nlc3NfdG9rZW4iLCJzY29wZXMiOiJyc29jIHJzZXQgcmFjdCBybG9jIHJ3ZWkgcmhyIHJudXQgcnBybyByc2xlIiwiZXhwIjoxNTE0NzEwMTk0LCJpYXQiOjE1MTQxMDUzOTR9.HwSLSBVuJiIEAozX6e29tPlBR2AIo7-6H9CmegiUBz0" https://api.fitbit.com/1/user/-/activities/steps/date/2017-${MONTH}-${DATE}/1d/1min/time/00:00:00/23:59:59.json -o heart_${TEST}_${MONTH}${DATE};;


"test7") curl -i -H "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI2NTVKOTkiLCJhdWQiOiIyMkNIODYiLCJpc3MiOiJGaXRiaXQiLCJ0eXAiOiJhY2Nlc3NfdG9rZW4iLCJzY29wZXMiOiJyc29jIHJhY3QgcnNldCBybG9jIHJ3ZWkgcmhyIHJudXQgcnBybyByc2xlIiwiZXhwIjoxNTE0NzExMzM4LCJpYXQiOjE1MTQxMDY4OTR9.jQOQLbkpTmqHoxcpWk0BZGZVUocgiTMeVLQmO46pyMw" https://api.fitbit.com/1/user/-/activities/steps/date/2017-${MONTH}-${DATE}/1d/1min/time/00:00:00/23:59:59.json -o heart_${TEST}_${MONTH}${DATE};;

"test8") curl -i -H "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI2NVNaUVEiLCJhdWQiOiIyMkNIODkiLCJpc3MiOiJGaXRiaXQiLCJ0eXAiOiJhY2Nlc3NfdG9rZW4iLCJzY29wZXMiOiJyc29jIHJzZXQgcmFjdCBybG9jIHJ3ZWkgcmhyIHJudXQgcnBybyByc2xlIiwiZXhwIjoxNTE0NzExMTM3LCJpYXQiOjE1MTQxMDYzMzd9.5AWb7WWl9_pYn7uFzzKm97ub7VHAMQCBHxg4lTv48FQ" https://api.fitbit.com/1/user/-/activities/steps/date/2017-${MONTH}-${DATE}/1d/1min/time/00:00:00/23:59:59.json -o heart_${TEST}_${MONTH}${DATE};;


"test9") curl -i -H "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI2NVQ3U1QiLCJhdWQiOiIyMkNIOEMiLCJpc3MiOiJGaXRiaXQiLCJ0eXAiOiJhY2Nlc3NfdG9rZW4iLCJzY29wZXMiOiJyc29jIHJhY3QgcnNldCBybG9jIHJ3ZWkgcmhyIHJudXQgcnBybyByc2xlIiwiZXhwIjoxNTE0NzIxMTIyLCJpYXQiOjE1MTQxMTYzMjJ9.YQELKrq1dtgo2ENsT2XrF6DoYIgWD_Zq0PH3nbtr3_4" https://api.fitbit.com/1/user/-/activities/steps/date/2017-${MONTH}-${DATE}/1d/1min/time/00:00:00/23:59:59.json -o heart_${TEST}_${MONTH}${DATE};;


"test10") curl -i -H "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI2NjNGN1QiLCJhdWQiOiIyMkNIOEoiLCJpc3MiOiJGaXRiaXQiLCJ0eXAiOiJhY2Nlc3NfdG9rZW4iLCJzY29wZXMiOiJyc29jIHJzZXQgcmFjdCBybG9jIHJ3ZWkgcmhyIHJudXQgcnBybyByc2xlIiwiZXhwIjoxNTQ1NjUzMTQ0LCJpYXQiOjE1MTQxMTcxNDR9.jT48QfUsSRtw1KMXK5DNLegwxxrug5a8D8Q_v1kR-dE" https://api.fitbit.com/1/user/-/activities/steps/date/2017-${MONTH}-${DATE}/1d/1min/time/00:00:00/23:59:59.json -o heart_${TEST}_${MONTH}${DATE};;

esac
python search_heart.py ${MONTH} ${DATE} ${TEST}

python json_to_csv.py dataset step_${TEST}_${MONTH}${DATE}.txt step_${TEST}_${MONTH}${DATE}.csv 
python json_to_csv.py dataset heart_${TEST}_${MONTH}${DATE}.txt heart_${TEST}_${MONTH}${DATE}.csv


step="step_"${TEST}"_"${MONTH}${DATE}".csv"
heart="heart_"${TEST}"_"${MONTH}${DATE}"_replace.csv"
output="output_"${TEST}"_"${MONTH}${DATE}".csv"
OUTPUT=${MONTH}${DATE}

python replace.py ${OUTPUT} ${TEST}
python merge.py ${step} ${heart} ${output}
                   
