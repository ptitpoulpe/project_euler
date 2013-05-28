from collections import defaultdict
from itertools import count, combinations
from math import sqrt
words = defaultdict(lambda: defaultdict(list))

for word in open('words.txt').read().split(','):
  word = word.strip('"')
  words[len(word)][''.join(sorted(word))].append(word)

for _, anas in words.items():
  for ana, wds in anas.items():
    if len(wds)<2:
      del anas[ana]

for l, anas in words.items():
  if len(anas)==0:
    del words[l]

words_lens = sorted(words.keys(), reverse=True)
max_word_len = max(words_lens)

squareds = defaultdict(set)
max_squared_len = 0
for i in count():
  squared = str(i**2)
  if len(squared) <= max_word_len:
    squareds[len(squared)].add(squared)
  else:
    break

for l, wds in words.items():
  print 'len:',l
  for an, wd in wds.items():
    print '  %s: %s'%(an, len(wd))
for l, sqs in squareds.items():
  print 's: %s: %s'%(l, len(sqs))

for wl in words_lens:
  for anas in words[wl].values():
    for w1, w2 in combinations(anas, 2):
      for s in squareds[wl]:
        match = {}
        revmatch = {}
        for w1c, sc in zip(w1, s):
          if w1c in match:
            if match[w1c]!=sc:
              match = None
              break
          if sc in revmatch:
            if revmatch[sc]!=w1c:
              match = None
              break
          match[w1c] = sc
          revmatch[sc] = w1c
        
        if match is not None:
          issquared = w2
          for wc, sc in match.items():
            issquared = issquared.replace(wc,sc)
          if issquared in squareds[wl]:
            print "Res:", s, issquared, w1, w2
          
      
