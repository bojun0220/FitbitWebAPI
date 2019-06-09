import sys, csv

date=sys.argv[1] # 2017-12-26
test=sys.argv[2]+'_' #test3
#date="2017-12-26"
#test="test3_"
a=open('heart_'+test+date).read().find('{"dataset"') # heart_test3_2017-12-26
b=open('heart_'+test+date).read().rfind("]")
#print a,b 
c=open('heart_'+test+date,'r').read()[a:b]
d=c+"]}"
f=open('heart_'+test+date+'.txt','w')
f.write(d)
