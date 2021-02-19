from typing import Union,List
def wash(lst:List[int])->List[int]:#remove duplicates
  ret:List[int]=[]
  for i,n in enumerate(lst):
    if i==0 or n!=lst[i-1]:ret.append(n)
  return ret
def lmax(lst:List[int])->List[int]:
  l=wash(lst)
  ret:List[int]=[]
  for i,n in enumerate(l):
    if i==0 and l[1]<n:ret.append(n);continue
    if i==len(l)-1 and l[i-1]<n:ret.append(n);continue
    if n>l[i-1] and n>l[i+1]:ret.append(n)
  return ret
def test_lmax_duplicates():
  assert lmax([1,2,2,3,3,2,3])==[3,3]
def test_lmax_praxis_test_case():
  assert lmax([1,2,1,2,3,4,3,2,3,2,1])==[2,4,3]
def test_lmax_beginning():
  assert lmax([4,2,2,3,4,5])==[4,5]


