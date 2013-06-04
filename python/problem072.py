res = []

res.append([0])
res.append([0,1])
def p(n):
  s = 0
  res.append([0])
  for i in range(1, n):
    s += res[n-i][min(i,n-i)]
    res[n].append(s)
  s += 1
  res[n].append(s)
  return s

n = 1
pn = 1
while pn%10000:
  n += 1
  pn = p(n)
print n
