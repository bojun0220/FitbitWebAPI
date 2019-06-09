import csv
import sys

#1. Place each record of a file in a list.
#2. Iterate thru each element of the list.
#3. If the index==1 amd x is '0'

test=sys.argv[2]  #=test3
date=sys.argv[1]  #=2017-12-08
f=open('heart_global.csv','w')  #1392L

heart_file='heart_'+test+'_'+date+'.csv'
reader = csv.reader(open(heart_file, 'rb')) #= heart_test3_2017-12-26.csv
for row in reader:
    for i, x in enumerate(row):
                if (i==1):
                         x =row[i]=" "
    f.write(','.join(str(x) for x in row)+'\n')  

#heart_notzero='heart_'+test+'_'+date+'_notzero.csv'
f.close()
g=open('heart_notzero.csv','w')
reader = csv.reader(open(heart_file, 'rb')) 
for row in reader:
    for i, x in enumerate(row):
                if (i==1 and x=='0'):
                         x =row[i]=" "
    g.write(','.join(str(x) for x in row)+'\n') 
g.close()

#heart_notzero.csv is replace '0' with ''
#heart_global.csv is replace all x with '' 









#heart_test3_1213_replace.csv

