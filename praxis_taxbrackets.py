# I mean, they said the brackets are givem, so why
# abstract any more? I can wrote Cobol in Python
# as well as the next person... maybe. Probably not.

def tax(i):
  lower=0
  if i<10000:return 0
  if i<30000:adnl=.1*(i-10000);return adnl
  if i>30000 and i<100000:lower+=2000;adnl=.25*(i-10000)
  else:adnl=(30000-10000)*.1
  if i>100000:lower+=17500;adnl=(100000-30000)*.4
  return lower+adnl

print(tax(123456)) # Test should = 22882.4

# Doesn't work...
#i=0 # Income
#bs=[(10000,.1),(30000,.25),(100000,.4)] # Brackets (cap,rate)



