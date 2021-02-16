# TAOCP Ex. 1.1.1
# Rearrange values of vars a, b, c, d to
# be b, c, d, a
# I am assuming these aren't necessarily numeric variables
# so can't use some arithmetic trick
# This takes 5 assignment statements. Don't know if that can be
# improved.
a,b,c,d='a','b','c','d'
print('Start:',a,b,c,d)
t=a; print('  t=a:',a,b,c,d)
a=b; print('  a=b:',a,b,c,d)
b=c; print('  b=c:',a,b,c,d)
c=d; print('  c=d:',a,b,c,d)
d=t; print('  d=t:',a,b,c,d)
print('Final:',a,b,c,d) # Should be 'b c d a'
