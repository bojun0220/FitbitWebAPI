import sys, csv

date=sys.argv[1] #sys.argv[1]=${MONTH}  sys.argv[2]=${TEST}
test=sys.argv[2]+'_'
a=open('step_'+test+date).read().find('{"dataset"') #step_test3_2017-12-08
b=open('step_'+test+date).read().rfind("]")
#print a,b
c=open('step_'+test+date,'r').read()[a:b]
d=c+"]}"
f=open('step_'+test+date+'.txt','w') #step_test3_2017-12-08.txt
f.write(d)
