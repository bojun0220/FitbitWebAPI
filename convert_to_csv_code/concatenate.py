#concatenate boost.txt and .txt 
import csv, sys
#with open("heart_test3_2017-12-26.txt", "r") as a:
#    with open("heart_test3_2017-12-26_boost.txt", "r") as b:
#        c=a.read().find('[')
#        print a.read()[:c]
#        concate=a.read()[:c]+b.read()+a.read()[c:]

month=sys.argv[1]
test=sys.argv[2]
heart_file='heart_'+test+'_'+month+'.txt'
#print f.read()
a=open(heart_file,'rb')
c=a.read().find('[')
#print a.read()
#print c
a=open(heart_file,'rb')
a1string=a.read()[:c+1]
#print a1string
a=open(heart_file,'rb')
a2string=a.read()[c+1:]
heart_boost='heart_'+test+'_'+month+'_boost.txt'
b=open(heart_boost,'rb')
bstring=b.read()
concate=a1string+bstring+a2string
heart_concate='heart_'+test+'_'+month+'_concate.txt'
d=open(heart_concate,'w')
d.write("%s" % concate)


