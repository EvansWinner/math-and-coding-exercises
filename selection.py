# Selection sort
def sel(lst):
  if len(lst)<2:return lst
  for pos in range(len(lst)):
    m=pos
    for i in range(pos,len(lst)):
      if lst[i]<lst[m]:m=i
    if lst[m]<lst[pos]:tmp=lst[pos];lst[pos]=lst[m];lst[m]=tmp
  return lst
assert sel([3,1,4,2,5])==[1,2,3,4,5]
assert sel([])==[]
assert sel([3])==[3]
assert sel([1,2,3])==[1,2,3]
assert sel([2,1])==[1,2]
assert sel([4,2,3])==[2,3,4]
assert sel([5,4,3,2,2])==[2,2,3,4,5]
assert sel(['f','r','g','e'])==['e','f','g','r']
print('All tests passed.')
