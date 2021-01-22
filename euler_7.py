import sys

nth = int(sys.argv[1])
ps = [2, 3]
len_ps = 2
n = 5
while len_ps <= nth:
    for i in ps[1:]:
        if i < (n ** 0.5) and n / i == n // i:
            ps.append(n)
            len_ps += 1
            print('i: ', i, 'ps: ', ps, 'len_ps', len_ps, 'n: ', n)
        n += 2
    n = 5
print(ps[-1])



