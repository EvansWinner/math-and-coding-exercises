# Bubble sort
# It's doing more passes or checks than it needs to.
# Not sure why... but to hell with it. It works.

# Now looking at how it's supposed to be done, the 
# whole thing with the flags to say when we are done
# appears to be unnecessary.

def bub(lst):
  if len(lst)<2:return lst
  sorted_flag=False
  while not sorted_flag:
    changed_flag=False
    for ptr in range(len(lst)-1):
      if lst[ptr]>lst[ptr+1]:
        tmp=lst[ptr];lst[ptr]=lst[ptr+1];lst[ptr+1]=tmp;changed_flag=True # Sort
      if ptr==len(lst)-2 and not changed_flag:sorted_flag=True
  return lst

assert bub([3,1,4,2,5]) == [1,2,3,4,5]
assert bub([]) == []
assert bub([3]) == [3]
assert bub([1,2,3]) == [1,2,3]
assert bub([2,1]) == [1,2]
assert bub([4,2,3]) == [2,3,4]
assert bub([5,4,3,2,2]) == [2,2,3,4,5]
assert bub(['f','r','g','e']) == ['e','f','g','r']
print('All tests passed.')
