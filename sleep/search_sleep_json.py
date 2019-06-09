#extract the json part from the downloaded file and save it as another output json file
import sys
date=sys.argv[1] #sys.argv[1]=${MONTH}  sys.argv[2]=${TEST}
test=sys.argv[2]+'_' 
file_dir=sys.argv[1]+'_'+sys.argv[2] 
a=open(file_dir+'/sleep_'+test+date).read().find('{"sleep"')#"minuteData"
#print a
b=open(file_dir+'/sleep_'+test+date).read().rfind('}}')
#print a,b
c=open(file_dir+'/sleep_'+test+date,'r').read()[a:b+2]
f=open(file_dir+'/sleep_'+test+date+'.json','w') 
f.write(c)
