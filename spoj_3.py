# Test data
d1='1010110010 10110' # Output: 1
d2='1110111011 10011' # Output: 0

def get_lng(i):return int(i[:9], 2)
def get_shrt(i):return int(i[11:], 2)

def doit(lng,shrt):
  ret=0
  for i in range(11):
    s=shrt
    l=lng
    s=s**i;print('s',bin(s))
    l=l**i
    if s==l:ret=1
  print(ret)

doit(get_lng(d1),get_shrt(d1))
doit(get_lng(d2),get_shrt(d2))

