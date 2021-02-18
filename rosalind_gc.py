# Really quick solution for Project Rosalind problem "GC"
# Terrible form, really.
DATA_FILE = '/home/t/h/math-and-coding-exercises/rosalind_gc.dat'
LINES = {}
def gc(s:str)->float:
  gc=0
  for c in s:
    if c=='G'or c=='C':gc+=1
  return 100*(gc/len(s))

entries={}
with open(DATA_FILE,'r') as f:LINES=f.readlines()
for line in LINES:
  if line[0]=='>':
    entry=line[1:-1]   
    entries[entry]=''
  else:
    entries[entry]+=line.rstrip('\n')

gcs={}
for key,value in entries.items():
  maxi=['dummy',0]
  gcs[key]=gc(value)
  if gc(value) > maxi[1]:maxi[0]=key;maxi[1]=gc(value)

print(maxi[0])
print(maxi[1])

