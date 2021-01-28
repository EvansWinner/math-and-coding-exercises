def bs(x,xs):
  if xs==[]:return None
  beg=0;end=len(xs)
  while True:
    print(beg,end)
    candidate=beg+((end-beg)//2)
    if x==xs[candidate]:return candidate
    elif x<xs[candidate]:end=candidate
    else:beg=candidate
    if end-beg<=1:return None

def test_1():
  assert bs(9,[2,4,4,5,6,6,8,9,10,12,12,12,14])==7, 'Should be 7.'
def test_2():
  assert bs(4,[1,2,3,4,5])==3
def test_empty():
  assert bs(5,[])==None
def test_oneLength():
  assert bs(5,[5])==0
def test_notThere():
  assert bs(5,[1,1])==None
def test_secondOfTwo():
  assert bs(5,[1,5])==1
def test_notThereofThree():
  assert bs(5,[1,2,3])==None
def test_last():
  assert bs(5,[1,2,3,4,5])==4
def test_strings():
  assert bs('c',['a','b','c','d'])==2
def test_allSame():
# We don't guarantee the first match, just some match.
# That's more efficient anyway.
  assert bs(6,[6,6,6,6,6,6])==3
def test_longish():
  assert bs(4,[1,2,2,3,3,3,4,5])==6
def test_long1():
  assert bs(4,[2,4,4,5,6,6,8,9,10,12,12,12,14])==1
def test_long2():
  assert bs(5,[2,4,4,5,6,6,8,9,10,12,12,12,14])==3
def test_long3():
  assert bs(8,[2,4,4,5,6,6,8,9,10,12,12,12,14])==6
def test_float():
  assert bs(8.5,[2,4,4,5,6,8.5,9,9,10,12,12,12,14])==5
def test_long5():
  assert bs(10,[2,4,4,5,6,6,8,9,10,12,12,12,14])==8
def test_long6():
  assert bs(12,[2,4,4,5,6,6,8,9,10,12,12,12,14])==9
def test_long7():
  assert bs(14,[2,4,4,5,6,6,8,9,10,12,12,12,14])==12
