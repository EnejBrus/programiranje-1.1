from functools import cache


@cache
def stevilo_nzz(n, k, l):
    for i in range(k + 1):
        if n <= 0:
            return 0
        elif i == 0:
            return 1
        elif n == 1:
            return 2    
        elif i < 0:
            pass
        elif l == 0:
            return 2**(n)
        else:            
            return stevilo_nzz(n - l - 1, i, l) + stevilo_nzz(n - 1, i, l)
    

