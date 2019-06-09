# -*- coding: utf-8 -*-

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

with open(file_dir + '/sleep_' + test + date + '.json', 'r') as sleepfile:
        sleep_json_data = json.load(sleepfile)

#Steps file process
with open(file_dir + '/steps_' + test + date + '.json', 'r') as stepsfile:
        steps_json_data = json.load(stepsfile)

for i in range(0,sleep_json_data["summary"]["totalSleepRecords"]):
        with open(file_dir + '/' + str(i) + '/sleep_end_time.txt', 'r') as sleep_endtime_file:
                end_string = sleep_endtime_file.readline()
                sleep_end_date, sleep_end_time = end_string.split(' ')#2019-06-06 , 08:50:30
sleep_count = 0
sit_time =[0]
is_sitting = False
sit_count = 0
steps_count = [0]
walk_time =[0]
walk_count = 0
step_data = steps_json_data["activities-steps-intraday"]["dataset"]
for j in range(0, len(step_data)):
        minute_data = step_data[j]
        steps_time = minute_data["time"]
        steps_value = minute_data["value"]
        #if the time is still sleeping
        if (int(steps_time[0:2]) < int(sleep_end_time[0:2])) | ((int(steps_time[0:2]) == int(sleep_end_time[0:2])) & (int(steps_time[3:5]) < int(sleep_end_time[3:5]))) :
                steps_json_data["activities-steps-intraday"]["dataset"][j]["value"] = 'sleep'
                #del steps_json_data["activities-steps-intraday"]["dataset"][j]
                sleep_count += 1
        elif steps_value < 10 :
                steps_json_data["activities-steps-intraday"]["dataset"][j]["value"] = 0
                if is_sitting == False :
                        is_sitting = True
                        sit_count += 1
                        sit_time.append(0)
                sit_time[sit_count]+= 1   
                #print(sit_count, sit_time[sit_count])                     
        else :
                if is_sitting == True :
                        is_sitting = False
                        walk_count += 1
                        steps_count.append(0) 
                        walk_time.append(0)    
                steps_count[walk_count] += steps_value
                walk_time[walk_count] += 1

steps_json_data["activities-steps"][0]["value"] = steps_count
new_steps_json = open(file_dir +'/modified_steps_' + test + date + '.json', 'w')
new_steps_json.write(json.dumps(steps_json_data))

steps_summary = open(file_dir + '/steps_summary' + test + date + '.txt' ,'w')
steps_summary.write('Sleep time(from 00:00): ' + str(sleep_count)+' minutes\n')
total_sit_time = 0
for i in range(0,sit_count+1) :
        steps_summary.write('Sit count no.' + str(i+1) +': ' + str(sit_time[i]) + 'minutes\n')
        total_sit_time += sit_time[i]
steps_summary.write('Total sit time: ' + str(total_sit_time) +'\n')
total_steps = 0
for i in range(0 ,walk_count) :
        steps_summary.write('Walk count no.' +str(i+1) +': ' +str(steps_count[i]) + 'steps for ' +str(walk_time[i]) +'minutes\n')
        total_steps += steps_count[i]
steps_summary.write('Total steps(modified): ' + str(total_steps) +'\n')




        










