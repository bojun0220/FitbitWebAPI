import csv,numpy,sys
date=sys.argv[1]
test=sys.argv[2]
with open('global.csv', 'r') as t1:  # 1441L
    global_csv = t1.readlines()  
with open('heart_global.csv', 'r') as t2: #1392L and no '0' , form mkglobal.py , original file is heart_test3_try.csv
    heart_global_csv = t2.readlines()
with open('heart_notzero.csv','r') as t3:
    heart_notzero_csv=t3.readlines()

heart_complement='heart_'+test+'_'+date+'_complement.csv'
with open(heart_complement, 'w') as out_file:
    line_in_new = 0
    line_in_old = 0
    while line_in_old < len(global_csv):
        if global_csv[line_in_old] == heart_global_csv[line_in_new]:
            out_file.write(heart_notzero_csv[line_in_new])
            line_in_old+=1
            line_in_new+=1
        elif global_csv[line_in_old] != heart_global_csv[line_in_new]:
            out_file.write(global_csv[line_in_old])
            line_in_old+=1

