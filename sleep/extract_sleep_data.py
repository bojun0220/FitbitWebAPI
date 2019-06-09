# -*- coding: utf-8 -*-
"""
Created on Fri Mar 16 10:54:34 2018

@author: USER
"""

#extract data from json file and output a csv file for each sleep
import json,csv
import sys,os
import numpy as np
import matplotlib
matplotlib.use('Agg')#Matplotlib chooses Xwindows backend by default. You need to set matplotlib to not use the Xwindows backend.
import matplotlib.pyplot as plt

date=sys.argv[1] #sys.argv[1]=${MONTH}  sys.argv[2]=${TEST}
test=sys.argv[2]+'_'
file_dir=sys.argv[1]+'_'+sys.argv[2]
gap_threshold = sys.argv[3]
awake_threshold = sys.argv[4]

with open(file_dir+'/sleep_'+test+date+'.json', 'r') as f:
        jsondata = json.load(f)

summary_file = csv.writer(open(file_dir+'/sleep_summary.csv', 'wb+'))
if jsondata["summary"]["totalSleepRecords"]!= 0:
    summary_file.writerow(["gap threshold (min)",gap_threshold])
    summary_file.writerow(["awake threshold (min)",awake_threshold])
    summary_file.writerow([])
else:
    summary_file.writerow(["no sleeping data"])

for i in range(0,jsondata["summary"]["totalSleepRecords"]):#if no sleep data, this looped won't be enetered
    each_sleep = jsondata["sleep"][i]
    #create a folder for each sleep fragment in that day
    each_sleep_dir=file_dir+'/'+str(i)
    if not os.path.exists(each_sleep_dir):
            os.makedirs(each_sleep_dir)
    
    start_string = each_sleep["startTime"]#2017-12-11T12:40:00.000
    end_string = each_sleep["endTime"]
    
    start_file = open(each_sleep_dir+'/sleep_start_time.txt','w')
    start_time_clean = start_string[:-4].split("T")#['2017-12-11', '12:40:00']
    start_file.write(start_time_clean[0]+' '+start_time_clean[1])
    
    end_file = open(each_sleep_dir+'/sleep_end_time.txt','w')
    end_time_clean = end_string[:-4].split("T")#['2017-12-11', '12:40:00']
    end_file.write(end_time_clean[0]+' '+end_time_clean[1])
    #print i,start_string,end_string
    
    #extract minute data and save it to csv
    minute_data = each_sleep["minuteData"]
    ori_file = csv.writer(open(each_sleep_dir+'/sleep_min_original.csv', 'wb+'))
    ori_file.writerow(["sleep_time", "sleep_value"])#header
    for j in range(0,len(minute_data)):
        min_element = minute_data[j]
        ori_file.writerow([min_element["dateTime"],min_element["value"]])
    
    #merge awake(delete small gap between close awake fragments)
    #close are defined by gap <= gap threshold
    prev_mode = '0'
    gap_time = 0 
    is_gap = 0
    
    for j in range(0,len(minute_data)):
        min_element = minute_data[j]
        sleep_mode = min_element["value"] #1 ("asleep"), 2 ("restless"), or 3 ("awake")
        sleep_time = min_element["dateTime"]
        
        if prev_mode =='3' and sleep_mode!='3':#just ended awake in previous minute
            is_gap = 1
        elif prev_mode !='3' and sleep_mode=='3' and is_gap == 1: #leave the gap and start awaking now:
            is_gap = 0
            if gap_time <= int(gap_threshold):
                print sleep_time,"gap_time=",gap_time,"(min) >>> merge awake fragments"
                for k in range(0,gap_time): #change all the mode in this gap to awake
                        minute_data[j-k-1]["value"] = '3'
                gap_time = 0 #reset gap_time to 0
        
        if is_gap == 1:
            gap_time = gap_time+1
        
        prev_mode = sleep_mode
    
    #modify awake by awake_threshold
    #but the awake fragment at the end and at the beginning will never be changed
    each_awake = 0
    prev_mode = '0'
    
    for j in range(0,len(minute_data)):
        min_element = minute_data[j]
        sleep_mode = min_element["value"] #1 ("asleep"), 2 ("restless"), or 3 ("awake")
        sleep_time = min_element["dateTime"]
        
        if prev_mode=='0' and sleep_mode =='3': #ignore the case of awake at the beginning
            continue
        else:
            if sleep_mode == '3':
                each_awake = each_awake + 1                
            elif prev_mode == '3': #just ended awake mode in previous minute
                if each_awake <= int(awake_threshold):
                    print sleep_time,"awake_time=",each_awake,"(min) >>> replaced by 'restless'"
                    for k in range(0,each_awake): #change all the awake in this fragment to restless
                        minute_data[j-k-1]["value"] = '2'
                    
                each_awake = 0 #reset each_awake after ending of awake segment
            
            prev_mode = sleep_mode
    
    #draw the bar plot
    value_list = []
    for j in range(0,len(minute_data)):
        value_list.append(int(minute_data[j]["value"]))
    value_array = np.asarray(value_list)
    awake_mask = (value_array==3)
    restless_mask = (value_array==2)
    asleep_mask = (value_array==1)
    x_axis=np.arange(len(minute_data))
    bar_width = 1 #1: no space btw bars
    plt.figure()
    plt.bar(x_axis[awake_mask], value_array[awake_mask], bar_width,color = 'red',edgecolor='none')
    plt.bar(x_axis[restless_mask], value_array[restless_mask], bar_width,color = 'cyan',edgecolor='none')
    plt.bar(x_axis[asleep_mask], value_array[asleep_mask], bar_width,color = 'blue',edgecolor='none')
    plt.savefig(each_sleep_dir+'/sleep_bar.png')
    
    asleep_duration = 0
    restless_duration = 0
    awake_duration = 0
    awake_times = 0
    restless_times = 0
    
    prev_mode = '0'
    
    csv_file = csv.writer(open(each_sleep_dir+'/sleep_min_threshold.csv', 'wb+'))
    csv_file.writerow(["sleep_time", "sleep_value"])#header
    for min_element in minute_data:
        sleep_mode = min_element["value"] #1 ("asleep"), 2 ("restless"), or 3 ("awake")
        csv_file.writerow([min_element["dateTime"],sleep_mode])
        
        if sleep_mode == '1':
            asleep_duration = asleep_duration + 1
        elif sleep_mode == '2':
            restless_duration = restless_duration + 1
            if prev_mode != '2':
                restless_times = restless_times + 1
        elif sleep_mode == '3':
            awake_duration = awake_duration + 1
            if prev_mode != '3':
                awake_times = awake_times + 1
        else:
            print "[Error]sleep_mode=",sleep_mode
        
        
        prev_mode = sleep_mode
            
    
    as_hr,as_min = divmod(asleep_duration,60)
    summary_file.writerow(["start date",start_time_clean[0]])
    summary_file.writerow(["start time",start_time_clean[1]])
    summary_file.writerow(["end date",end_time_clean[0]])
    summary_file.writerow(["end time",end_time_clean[1]])
    summary_file.writerow(["asleep (hr)",as_hr])
    summary_file.writerow(["asleep (min)",as_min])
    summary_file.writerow(["awake times",awake_times])
    summary_file.writerow(["restless times",restless_times])
    summary_file.writerow(["awake (min)",awake_duration])
    summary_file.writerow(["restless (min)",restless_duration])
    summary_file.writerow([])
