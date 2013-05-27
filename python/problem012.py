def triangle():
    t, i = 0, 1
    while True:
        t += i
        i += 1
        yield t

x = 0
memoize = {1: set([1])}
for i in triangle():
    divs = set([i])
    for j in range(i+1,0,-1):
        if j not in divs:
            d, m = divmod(i,j)
            if not m: 
                divs.add(j)
                divs.add(d)
                if j in memoize:
                    divs.update(memoize[j])
                if d in memoize:
                    divs.update(memoize[d])
    memoize[i] = divs
    divs2 = set([j for j in range(1,i+1) if not i%j])
    if divs!=divs2:
        print i
        print sorted(divs)
        print sorted(divs2)
        assert False
    print i, len(divs)
    x+=1
    if len(divs) > 500:
        print i, len(divs)
        print sorted(divs)
        break


