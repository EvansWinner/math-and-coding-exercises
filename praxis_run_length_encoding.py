# String run-length encoding per
# https://programmingpraxis.com/2021/02/09/run-length-encoding-2/
from typing import Tuple,List
RunLen=Tuple[str,int]
def rl(s:str,ret:List[RunLen],c:str,n:int)->List[RunLen]:
  if s[0]==c and len(s)>1:return rl(s[1:],ret,c,n+1)
  elif s[0]==c and len(s)==1:return ret+[(c,n+1)]
  elif len(s)==1:return ret+[(c,n),(s,1)]
  else:return rl(s[1:],ret+[(c,n)],s[1],1)
def run_len(s:str)->List[RunLen]:return rl(s,[],s[0],0)
def test_run_len_orig_test():assert run_len('aaaabbbcca')==[('a',4),('b',3),('c',2),('a',1)]
def test_run_len_ends_with_multuple():assert run_len('aaaabbbccaa')==[('a',4),('b',3),('c',2),('a',2)]
print(run_len('aaaabbbcca')) # Original Programming Praxis test case
print(run_len('aaaabbbccaa')) # Test case with double training characters
