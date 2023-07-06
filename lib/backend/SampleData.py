import random as r
import os

f = open("AttendanceList.json","w")
print(os.curdir)
f.write("{")
for i in range(10):
    f.write("\"22Z20"+str(i)+"\":")
    f.write("\"Present\"" if r.randint(0,1) <= 0.5 else "\"Absent\"")
    f.write(",")

for i in range(70):
    f.write("\"22Z2"+str(i)+"\":")
    f.write("\"Present\"" if r.randint(0,1) <= 0.5 else "\"Absent\"")
    f.write(",")

f.write("}")



