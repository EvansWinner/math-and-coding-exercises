def collatz(n):
  if n//2==n/2:return n/2
  return 3*n+1
def collatz_len(n,count):
  if n==1:return count
  return collatz_len(collatz(n),count+1)
def collatz_max(n):
  mx=0;nth=0
  for i in range(1,n+1):
    this=collatz_len(i,1)
    if this>mx:mx=this;nth=i
  return (nth,mx)
    
print('(n,length) =',collatz_max(1000000))
