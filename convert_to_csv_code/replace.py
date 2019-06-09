import csv
import sys

#1. Place each record of a file in a list.
#2. Iterate thru each element of the list.
#3. If the index==1 amd x is '0'.

test=sys.argv[2] #sys.argv[2]=test3
date=sys.argv[1] #sys.argv[1]=2017-12-08
file_heart='heart_'+test+'_'+date+'.csv' # = heart_test3_2017-12-08.csv
f=open('heart_'+test+"_"+date+'_replace.csv','w') #heart_test3_2017-12-08_replace.csv

reader = csv.reader(open(file_heart, "rb"))
for row in reader:
    for i, x in enumerate(row):
                if (i==1 and x=='0'):
                         x =row[i]=" "
#    print ','.join(str(x) for x in row)
    f.write(','.join(str(x) for x in row)+'\n')

#heart_test3_1213_replace.csv

