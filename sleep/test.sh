
while getopts "t:m:g:a:" option;do
      case "${option}" in
     t) TEST=${OPTARG};;
     m) MONTH=${OPTARG};;  #2017-12-08
     g) GAP_TH=${OPTARG};; #(in min) if two awake fragments are <= gap threshold apart-->merge them into one fragment
     a) AWAKE_TH=${OPTARG};; #5 (in min) if awake duration <= awake threshold-->count as asleep
     esac
done

python create_dir.py ${MONTH}_${TEST}


case $TEST in
"test3") curl -i -H "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIyMkRRNzgiLCJzdWIiOiI3SzZQWlYiLCJpc3MiOiJGaXRiaXQiLCJ0eXAiOiJhY2Nlc3NfdG9rZW4iLCJzY29wZXMiOiJyc29jIHJzZXQgcmFjdCBybG9jIHJ3ZWkgcmhyIHJudXQgcnBybyByc2xlIiwiZXhwIjoxNTYwMzk3MTk5LCJpYXQiOjE1NTk3OTIzOTl9.u_Zn0Rfo0_fjRAE4N7X1ofZpivKKX67ZjBvRvZfBkBk" https://api.fitbit.com/1/user/-/sleep/date/${MONTH}.json -o ${MONTH}_${TEST}/sleep_${TEST}_${MONTH};;

"test4") curl -i -H "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI2NUJOM1kiLCJhdWQiOiIyMkNITEQiLCJpc3MiOiJGaXRiaXQiLCJ0eXAiOiJhY2Nlc3NfdG9rZW4iLCJzY29wZXMiOiJyc29jIHJzZXQgcmFjdCBybG9jIHJ3ZWkgcmhyIHJudXQgcnBybyByc2xlIiwiZXhwIjoxNTQ1ODIzNDgwLCJpYXQiOjE1MTQyODc0ODB9.I12qY1F-s7_zbCjqj4XjvIUwOQswTVEB_lN1_YCN1ck" https://api.fitbit.com/1/user/-/sleep/date/${MONTH}.json -o ${MONTH}_${TEST}/sleep_${TEST}_${MONTH};;


"test5") curl -i -H "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI2NTJRM1oiLCJhdWQiOiIyMkNIODIiLCJpc3MiOiJGaXRiaXQiLCJ0eXAiOiJhY2Nlc3NfdG9rZW4iLCJzY29wZXMiOiJyc29jIHJzZXQgcmFjdCBybG9jIHJ3ZWkgcmhyIHJwcm8gcm51dCByc2xlIiwiZXhwIjoxNTQ1ODIzNjMwLCJpYXQiOjE1MTQyODc2MzB9.6qEwc_zPz-Mu_YFuzQrvNBdc8Mv6KBwgDllnO_KsGpI" https://api.fitbit.com/1/user/-/sleep/date/${MONTH}.json -o ${MONTH}_${TEST}/sleep_${TEST}_${MONTH};;


"test6") curl -i -H "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI2NUJMNloiLCJhdWQiOiIyMkNIODgiLCJpc3MiOiJGaXRiaXQiLCJ0eXAiOiJhY2Nlc3NfdG9rZW4iLCJzY29wZXMiOiJyc29jIHJhY3QgcnNldCBybG9jIHJ3ZWkgcmhyIHJudXQgcnBybyByc2xlIiwiZXhwIjoxNTQ1ODIzNzE4LCJpYXQiOjE1MTQyODc3MTh9.l-36DWBntf97khhUrzRFdv1YqLcoY7eqTb1Lrrgf6dQ" https://api.fitbit.com/1.2/user/-/sleep/date/${MONTH}.json -o ${MONTH}_${TEST}/sleep_${TEST}_${MONTH};;


"test7") curl -i -H "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI2NTVKOTkiLCJhdWQiOiIyMkNIODYiLCJpc3MiOiJGaXRiaXQiLCJ0eXAiOiJhY2Nlc3NfdG9rZW4iLCJzY29wZXMiOiJyc29jIHJzZXQgcmFjdCBybG9jIHJ3ZWkgcmhyIHJudXQgcnBybyByc2xlIiwiZXhwIjoxNTQ1ODIzODI3LCJpYXQiOjE1MTQyODc4Mjd9.TER_jBM7zVzPa5mJ87pk4uh7AK0D9VzhXgKN44KYj6E" https://api.fitbit.com/1/user/-/sleep/date/${MONTH}.json -o ${MONTH}_${TEST}/sleep_${TEST}_${MONTH};;

"test8") curl -i -H "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI2NVNaUVEiLCJhdWQiOiIyMkNIODkiLCJpc3MiOiJGaXRiaXQiLCJ0eXAiOiJhY2Nlc3NfdG9rZW4iLCJzY29wZXMiOiJyc29jIHJhY3QgcnNldCBybG9jIHJ3ZWkgcmhyIHJwcm8gcm51dCByc2xlIiwiZXhwIjoxNTQ1ODIzOTEzLCJpYXQiOjE1MTQyODc5MTN9.etAS_qF0qZkNGnVOHXcuLvkcmiPAOmKQTgYWPIA4VXE" https://api.fitbit.com/1/user/-/sleep/date/${MONTH}.json -o ${MONTH}_${TEST}/sleep_${TEST}_${MONTH};;


"test9") curl -i -H "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI2NVQ3U1QiLCJhdWQiOiIyMkNIOEMiLCJpc3MiOiJGaXRiaXQiLCJ0eXAiOiJhY2Nlc3NfdG9rZW4iLCJzY29wZXMiOiJyc29jIHJhY3QgcnNldCBybG9jIHJ3ZWkgcmhyIHJudXQgcnBybyByc2xlIiwiZXhwIjoxNTQ1ODI0MDEwLCJpYXQiOjE1MTQyODgwMTB9.pAQAzlpbCFGNSENc9AAFgAV9Fee8H4n1ryIhkhHHSh8" https://api.fitbit.com/1/user/-/sleep/date/${MONTH}.json -o ${MONTH}_${TEST}/sleep_${TEST}_${MONTH};;

"test10") curl -i -H "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI2NjNGN1QiLCJhdWQiOiIyMkNIOEoiLCJpc3MiOiJGaXRiaXQiLCJ0eXAiOiJhY2Nlc3NfdG9rZW4iLCJzY29wZXMiOiJyc29jIHJzZXQgcmFjdCBybG9jIHJ3ZWkgcmhyIHJudXQgcnBybyByc2xlIiwiZXhwIjoxNTQ1NjUzMTQ0LCJpYXQiOjE1MTQxMTcxNDR9.jT48QfUsSRtw1KMXK5DNLegwxxrug5a8D8Q_v1kR-dE" https://api.fitbit.com/1/user/-/sleep/date/${MONTH}.json -o ${MONTH}_${TEST}/sleep_${TEST}_${MONTH};;
esac
python search_sleep_json.py ${MONTH} ${TEST}
python extract_sleep_data.py ${MONTH} ${TEST} ${GAP_TH} ${AWAKE_TH}

