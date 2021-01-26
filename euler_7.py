import sys

nth = int(sys.argv[1])
primes = [2]
len_primes = 1
to_check = 3

def primes():
  while True:
    flag = True
    for checker in primes:
      print(checker, to_check ** 0.5)
      if checker <= to_check ** 0.5:
        if to_check // checker == to_check / checker:
          flag = False # it's not prime
      if flag:
        primes.append(to_check)
        len_primes += 1
        print('Prime #', len_primes, ' is: ', primes[-1])
    to_check += 1
    if len_primes >= nth: break  

if __name__ == '__main__':
  primes()
