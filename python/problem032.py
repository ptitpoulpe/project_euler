from itertools import permutations

sizes = []
for i in range(1,7):
  for j in range(i, 7):
    k = 9 - i - j
    if i + j - 1 <= k and k <= i + j + 1:
      sizes.append((i,j,k))

print sizes
digits = frozenset(str(i) for i in range(1,10))
res = set()
for i,j,k in sizes:
  for p in permutations(digits, i+j):
    vi = int(''.join(p[:i]))
    vj = int(''.join(p[i:]))
    vk = vi * vj
    stk = str(vk)
    fsk = frozenset(stk)
    if digits - frozenset(p) == fsk and len(fsk)==len(stk):
      res.add(vk)
      print i, j, k, vi, vj, vi*vj
print sum(res)
