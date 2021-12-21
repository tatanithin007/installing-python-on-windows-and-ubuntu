import os
import glob
os.system("pip install -r requirements.txt")


print("Deleting files")
files=glob.glob(os.getcwd()+'*')
for f in files:
    print(f"removing file {f}")
    os.remove(f)