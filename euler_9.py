# Project Euler # 9.
# Sometimes you just need a big hammer.
r=1000
for a in range(1,r):
  for b in range(1,r):
    for c in range(1,r):
      if a+b+c==r and a**2+b**2==c**2:print(a,b,c);exit()
