# Selection sort
def sel(lst):
  if len(lst)<2:return lst
  ptr=0
  for pos in range(len(lst)):
    m=lst[0]
    for i,elt in enumerate(lst): #'m' for min
      if elt<m:m=elt;idx=i
    tmp=ptr;ptr=i;i=tmp;idx+=1
  return lst
print(sel([3,1,4,2,5]))
assert sel([3,1,4,2,5])==[1,2,3,4,5]
assert sel([])==[]
assert sel([3])==[3]
assert sel([1,2,3])==[1,2,3]
assert sel([2,1])==[1,2]
assert sel([4,2,3])==[2,3,4]
assert sel([5,4,3,2,2])==[2,2,3,4,5]
assert sel(['f','r','g','e'])==['e','f','g','r']
print('All tests passed.')
