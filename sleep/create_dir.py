import os,sys
directory=sys.argv[1]
if not os.path.exists(directory):
    os.makedirs(directory)