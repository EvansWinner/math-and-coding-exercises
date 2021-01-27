def bs(x,xs):
  beg=0
  end=len(xs)
  found=False
  done=False
  while not found and not done:
    candidate=(end-beg)//2
    if x==xs[candidate]:
      return candidate
    elif x < xs[candidate]:
        end=candidate
    else:
      beg=candidate
assert bs(4,[1,2,3,4,5])==3
assert bs(5,[])==None
assert bs(5,[5])==0
assert bs(5,[1,1])==0
assert bs(5,[1,5])==1
assert bs(5,[1,2,3])==None
assert bs(5,[1,2,3,4,5])==4
assert bs('a',[1,2])==None
assert bs('c',['a','b','c','d'])==2
assert bs(6,[6,6,6])==0
assert bs(4,[1,2,2,3,3,3,4,5])==6
assert bs(8,[2,4,4,5,6,6,8,9,10,12,12,12,14])==6
print('All tests passed.')
