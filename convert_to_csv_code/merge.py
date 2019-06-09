import csv, array, os,sys
import pandas as pd

step=sys.argv[1] #=step
heart=sys.argv[2] #=heart_replace
output=sys.argv[3] #output=test3_step_heart_2017-12-28.csv
#test=sys.argv[4]+"_"
a = pd.read_csv(step)
b = pd.read_csv(heart)
merged = a.merge(b, on='dataset_time',suffixes=('_step','_heart'))
merged.to_csv(output, index=False)

