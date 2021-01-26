# Bubble sort

def bub(lst):
  if len(lst)<2:return lst
  sorted_flag=False
  while not sorted_flag:
    for ptr in range(len(lst)-1):
      changed_flag = False
      if lst[ptr]>lst[ptr+1]:
        tmp=lst[ptr];lst[ptr]=lst[ptr+1];lst[ptr+1]=tmp # swap
        changed_flag=True  
      if ptr==len(lst) and not changed_flag: sorted_flag=True

if __name__ == '__main__':
  assert bub([3,1,4,2,5]) == [1,2,3,4,5]
  assert bub([]) == []
  assert bub([3]) == [3]
  assert bub([1,2,3]) == [1,2,3]
  assert bub([2,1]) == [1,2]
  assert bub([4,2,3]) == [2,3,4]
  assert bub([5,4,3,2,2]) == [2,2,3,4,5]
  assert bub(['fds','rew','gfd','ewq']) == ['ewq','fds','gfd','rew']
  print('All tests passed.")
