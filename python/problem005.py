#!/bin/python

def infinite(start=0):
    while True:
        yield start
        start += 20

for i in infinite(40):
    ok = True
    for j in range(1,21):
        ok &= not divmod(i,j)[1]
        if not ok:
            break
    if ok:
        break
print i
