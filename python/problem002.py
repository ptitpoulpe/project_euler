#!/bin/python
a, b = 0, 1
s = 0
while b<4000000:
    if not divmod(b, 2)[1]: s += b
    a, b = b, a + b 
print s
