with open ('rhyming.txt','r') as f:ls=f.readlines()
for i,l in enumerate(ls):ls[i]=l[::-1]
ls.sort()
for i,l in enumerate(ls):ls[i]=l[::-1];print(ls[i])
