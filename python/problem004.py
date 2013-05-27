#!/bin/python

def palindrom(i):
    i = str(i)
    for j in range(len(i)/2):
        if i[j]!=i[-(j+1)]: return False
    return True

print max(i*j for i in range(900,999) for j in range(900,999) if palindrom(i*j))
