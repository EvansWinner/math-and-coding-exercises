def isHappy(i,priors):
  if i==1:return True
  nxt=sum(map(lambda x:int(x)**2,str(i)))
  if nxt in priors:return False
  priors.append(nxt)
  return isHappy(nxt,priors)

res=[];n=1
while len(res)<8:
  if isHappy(n,[]):res.append(n)
  n+=1

print(res)

