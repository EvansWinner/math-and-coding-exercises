def linSrch(x,xs):
  for i,obj in enumerate(xs):
    if x==obj: return i
assert linSrch(1,[2,3,1,3])==2
assert linSrch(1,[2,3,4,1])==3
assert linSrch(1,['b',2])==None
assert linSrch('a',['a',2])==0
print('All tests passed.')
