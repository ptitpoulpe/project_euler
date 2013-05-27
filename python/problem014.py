memoize = {1:0}
def fun(i):
    if i in memoize: return memoize[i]
    d, m = divmod(i,2) 
    if m:
        l = fun(i*3+1) + 1
    else:
        l = fun(d) + 1
    memoize[i] = l
    return l

max = (0,0)
for i in range(1,1000000):
    l = fun(i)
    if l>max[1]:
        max = (i,l)
print max

