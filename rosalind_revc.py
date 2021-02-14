#100DaysOfCode D28: #ProjectRosalind "REVC"
# Couldn't figure it out in APL, so went with Python 3:
d='AAAACCCGGT';comps={'A':'T','T':'A','C':'G','G':'C'};ret=''
for c in d[::-1]:ret+=comps[c]
print(ret)
