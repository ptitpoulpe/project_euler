memoize = {}
def route(n,m):
    if n > m:
        n, m = m, n
    if (n,m) in memoize: return memoize[(n,m)]
    if n==1: r = m+1
    elif m==1: r = n+1
    else:
        r = route(n-1, m) + route(n, m-1)
    memoize[(n,m)] = r
    return r
print route(2,2)
print route(3,3)
print route(4,4)
print route(20,20)
