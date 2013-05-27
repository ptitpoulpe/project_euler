import itertools as it

poss = [x for x in range(1,1000)]
for i in it.combinations(poss, 3):
    if sum(i)==1000:
        i = sorted(i)
        if i[-1]**2==i[0]**2 + i[1]**2:
            print i
