#100DaysOfCode D8 (I think): Rosetta Code: 100 Doors
# in four lines of Python lol
ds=[False]*100 #False=door closed; True=open
for n in range(1,101):
  for d in range(n,101,n):ds[d-1]=not ds[d-1]
for i,d in enumerate(ds,1):print('Door #',i,'is open?',d)
