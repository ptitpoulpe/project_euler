def pgcd(a,b):
  if b==0:
    return a
  else:
    r=a%b
    return pgcd(b,r)

fracs = []

for i in range(1,10):
  for j in range(1,10):
    ij = float(i)/float(j)
    if i!=j and ij <= 1:
      for k in range(1,10):
        ik = i*10. + k
        jk = j*10. + k
        ki = k*10. + i
        kj = k*10. + j
        if ij == ik/jk:
          print "i/j:", i, j, "ik/jk:", ik, jk
          fracs.append((ik, jk))
        if ij == ik/kj:
          print "i/j:", i, j, "ik/kj:", ik, kj
          fracs.append((ik, kj))          
        if ij == ki/jk: 
          print "i/j:", i, j, "ki/jk:", ki, jk
          fracs.append((ki, jk))          
        if ij == ki/kj: 
          print "i/j:", i, j, "ki/kj:", ki, kj
          fracs.append((ki, kj))

frac = (1, 1)
for (i, j) in fracs:
  frac = (frac[0]*i,frac[1]*j)
tmp = pgcd(frac[0],frac[1])
frac = (frac[0]/tmp, frac[1]/tmp)
print frac[1]
