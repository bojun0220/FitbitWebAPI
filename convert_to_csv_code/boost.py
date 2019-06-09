import csv, sys
month=sys.argv[1]
test=sys.argv[2]
heart_file='heart_'+test+'_'+month+'.txt'
context=''

r=open(heart_file,'rb').read().find('[')
l=open(heart_file,'rb').read().find(']')

if r+1!=l:
# Find the last time stamp a1,a2
    a=open(heart_file,'rb').read().rfind('time":"')
    b=open(heart_file,'rb').read().rfind(':00')
    c=open(heart_file,'r').read()[a+7:b]
    d=c+':00'
    d=str(d)
    print 'last time stamp hr:min:sec are =',d
    a1=d[0]+d[1]
    a2=d[3]+d[4]
    a1=int(a1) #hr
    a2=int(a2) #min
    

#Find the first time stamp e,f

    a=open(heart_file,'rb').read().find('time":"')
    b=open(heart_file,'rb').read().find(':00')
    c=open(heart_file,'r').read()[a+7:b]
    d=c+':00'
    d=str(d)
    e=d[0]+d[1]
    f=d[3]+d[4]
    print 'the first time stampe hr:min is=',e,f
    e=int(e) #hr
    f=int(f) #min
        

if r+1==l: #empty data boost
    print 'empty data'
    for i in range(0,23): #00:~ 22:00
        for j in range(0,60):
            if len(str(i))<2 and len(str(j))<2:
                query='{"time":"0'+str(i)+":0"+str(j)+':00","value":0},'
            elif len(str(i))<2 and len(str(j))==2:
                query='{"time":"0'+str(i)+":"+str(j)+':00","value":0},'
            elif len(str(i))==2 and len(str(j))<2:
                query='{"time":"'+str(i)+":0"+str(j)+':00","value":0},'
            else:
                query='{"time":"'+str(i)+":"+str(j)+':00","value":0},'
            query=str(query)
            context+=query
    for i in range(23,24): #23:00 ~ 23:58
        for j in range(0,59):
            if len(str(i))<2 and len(str(j))<2:
                query='{"time":"0'+str(i)+":0"+str(j)+':00","value":0},'
            elif len(str(i))<2 and len(str(j))==2:
                query='{"time":"0'+str(i)+":"+str(j)+':00","value":0},'
            elif len(str(i))==2 and len(str(j))<2:
                query='{"time":"'+str(i)+":0"+str(j)+':00","value":0},'
            else:
                query='{"time":"'+str(i)+":"+str(j)+':00","value":0},'
            query=str(query)
            context+=query
    for i in range(23,24): #23:59
        for j in range(59,60):
            query='{"time":"23:59:00","value":0}'
            query=str(query)
            context+=query
else: #non-empty data boost 
    if (((e==0 and f==0 and (a1!= 23 and a2!= 59))or((e==0 and f==0 and (a1==23 and a2!=59))))): # yes-no
        print 'yes-no'
        for i in range(a1,a1+1):
            for j in range(a2+1,60):
                if len(str(i))<2 and len(str(j))<2:
                    query='{"time":"0'+str(i)+":0"+str(j)+':00","value":0},'
                elif len(str(i))<2 and len(str(j))==2:
                    query='{"time":"0'+str(i)+":"+str(j)+':00","value":0},'
                elif len(str(i))==2 and len(str(j))<2:
                    query='{"time":"'+str(i)+":0"+str(j)+':00","value":0},'
                else:
                    query='{"time":"'+str(i)+":"+str(j)+':00","value":0},'
                query=str(query)
        #context.insert(len(context),query)
        #context.append(query)
                context+=query
        for i in range(a1+1,24):
            for j in range(0,59):
                if len(str(i))<2 and len(str(j))<2:
                    query='{"time":"0'+str(i)+":0"+str(j)+':00","value":0},'
                elif len(str(i))<2 and len(str(j))==2:
                    query='{"time":"0'+str(i)+":"+str(j)+':00","value":0},'
                elif len(str(i))==2 and len(str(j))<2:
                    query='{"time":"'+str(i)+":0"+str(j)+':00","value":0},'
                else:
                    query='{"time":"'+str(i)+":"+str(j)+':00","value":0},'
                query=str(query)
        #context.insert(len(context),query)
        #context.append(query)
                context+=query
        for i in range(23,24):
            for j in range(59,60):
                query='{"time":"23:59:00","value":0}'
                context+=query
    elif (e!=0 and (a1==23 and a2==59))or(e==0 and f!=0 and (a1==23 and a2==59)): # no-yes
        print 'no-yes'  
        for i in range(0,e):
            for j in range(0,60):
                if len(str(i))<2 and len(str(j))<2:
                    query='{"time":"0'+str(i)+":0"+str(j)+':00","value":0},'
                elif len(str(i))<2 and len(str(j))==2:
                    query='{"time":"0'+str(i)+":"+str(j)+':00","value":0},'
                elif len(str(i))==2 and len(str(j))<2:
                    query='{"time":"'+str(i)+":0"+str(j)+':00","value":0},'
                else:
                    query='{"time":"'+str(i)+":"+str(j)+':00","value":0},'
                query=str(query)
                context+=query
        for i in range(e,e+1):
            for j in range(0,f):
                if len(str(i))<2 and len(str(j))<2:
                    query='{"time":"0'+str(i)+":0"+str(j)+':00","value":0},'
                elif len(str(i))<2 and len(str(j))==2:
                    query='{"time":"0'+str(i)+":"+str(j)+':00","value":0},'
                elif len(str(i))==2 and len(str(j))<2:
                    query='{"time":"'+str(i)+":0"+str(j)+':00","value":0},'
                else:
                    query='{"time":"'+str(i)+":"+str(j)+':00","value":0},'
                query=str(query)
                context+=query
    else: #no-no
        for i in range(0,e): #0~6
            for j in range(0,60):
                if len(str(i))<2 and len(str(j))<2:
                    query='{"time":"0'+str(i)+":0"+str(j)+':00","value":0},'
                elif len(str(i))<2 and len(str(j))==2:
                    query='{"time":"0'+str(i)+":"+str(j)+':00","value":0},'
                elif len(str(i))==2 and len(str(j))<2:
                    query='{"time":"'+str(i)+":0"+str(j)+':00","value":0},'
                else:
                    query='{"time":"'+str(i)+":"+str(j)+':00","value":0},'
                query=str(query)
                context+=query
        for i in range(e,e+1): #7
            for j in range(0,f): #10
                if len(str(i))<2 and len(str(j))<2:
                    query='{"time":"0'+str(i)+":0"+str(j)+':00","value":0},'
                elif len(str(i))<2 and len(str(j))==2:
                    query='{"time":"0'+str(i)+":"+str(j)+':00","value":0},'
                elif len(str(i))==2 and len(str(j))<2:
                    query='{"time":"'+str(i)+":0"+str(j)+':00","value":0},'
                else:
                    query='{"time":"'+str(i)+":"+str(j)+':00","value":0},'
                query=str(query)
                context+=query
        x=open(heart_file,'rb').read()
        xc=x.find('[')
        context=context+x[xc+1:-2]
        context_2=''
        for i in range(a1,a1+1): #13 
            for j in range(a2+1,60): #39~59
                if len(str(i))<2 and len(str(j))<2:
                    query='{"time":"0'+str(i)+":0"+str(j)+':00","value":0},'
                elif len(str(i))<2 and len(str(j))==2:
                    query='{"time":"0'+str(i)+":"+str(j)+':00","value":0},'
                elif len(str(i))==2 and len(str(j))<2:
                    query='{"time":"'+str(i)+":0"+str(j)+':00","value":0},'
                else:
                    query='{"time":"'+str(i)+":"+str(j)+':00","value":0},'
                query=str(query)
                context_2+=query
        context=context+','+context_2
        context_3=''
        for i in range(a1+1,24): #14
            for j in range(0,60): 
                if i==23 and j==59:
                    query='{"time":"23:59:00","value":0}'
                    query=str(query)
                    context_3+=query
                else:
                    if len(str(i))<2 and len(str(j))<2:
                        query='{"time":"0'+str(i)+":0"+str(j)+':00","value":0},'
                    elif len(str(i))<2 and len(str(j))==2:
                        query='{"time":"0'+str(i)+":"+str(j)+':00","value":0},'
                    elif len(str(i))==2 and len(str(j))<2:
                        query='{"time":"'+str(i)+":0"+str(j)+':00","value":0},'
                    else:
                        query='{"time":"'+str(i)+":"+str(j)+':00","value":0},'
                    query=str(query)
                    context_3+=query
        context='{"dataset":['+context+context_3+']}' 
        heart_concate='heart_'+test+'_'+month+'_concate.txt'
        d=open(heart_concate,'w')
        d.write("%s" % context)
        d.close()


heart_boost='heart_'+test+'_'+month+'_boost.txt'
p=open(heart_boost,'w')
p.write("%s"% context)
p.close()



#Cancatenate
if r+1==l: #empty data
    print 'cancatenate empty data' 
    a=open(heart_file,'rb')
    a1string=a.read()[:r+1] #{data.. [ 
    a=open(heart_file,'rb')
    a2string=a.read()[r+1:] 
    heart_boost='heart_'+test+'_'+month+'_boost.txt'
    b=open(heart_boost,'rb')
    bstring=b.read()
    concate=''
    concate=a1string+bstring+a2string
    heart_concate='heart_'+test+'_'+month+'_concate.txt'
    d=open(heart_concate,'w')
    d.write("%s" % concate)


elif ((a1==23 and a2==59 and (e!=0)) or ((a1==23 and a2==59) and e==0 and f!=0)): # no-yes
    a=open(heart_file,'rb')
    c=a.read().find('[')
    a=open(heart_file,'rb')
    a1string=a.read()[:c+1]
    a=open(heart_file,'rb')
    a2string=a.read()[c+1:]
    heart_boost='heart_'+test+'_'+month+'_boost.txt'
    b=open(heart_boost,'rb')
    bstring=b.read()
    concate=''
    concate=a1string+bstring+a2string
    heart_concate='heart_'+test+'_'+month+'_concate.txt'
    d=open(heart_concate,'w')
    d.write("%s" % concate)
elif ((e==0 and f==0 and (a1!=23))or((e==0 and f==0) and ((a1==23 and a2!=59)))): #yes-no
    a=open(heart_file,'rb')
    a3=a.read()
    heart_boost='heart_'+test+'_'+month+'_boost.txt'
    b9=open(heart_boost,'rb').read()
    a3=a3[0:-2]
    concate=''
    concate=a3+','+b9+']}'
    heart_concate='heart_'+test+'_'+month+'_concate.txt'
    d=open(heart_concate,'w')
    d.write("%s" % concate)



else:  # e==0 and f==0 and a1==23 and a2==59
    o=open(heart_boost,'rb')
    o1=o.read()
    o2=''
    o2=o1.replace(",]","]")
    #o3=o2.replace("}}","}")
    heart_concate='heart_'+test+'_'+month+'_concate.txt'
    d=open(heart_concate,'w')
    d.write("%s" % o2) 

