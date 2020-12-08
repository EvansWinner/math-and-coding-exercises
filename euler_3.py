"""Calculate the largest prime factor of 600851475143"""

import time
from typing import List
import math

start_time = time.time()
NUMBER: int = 600851475143
highest_possible_factor: int = math.ceil(math.sqrt(NUMBER))
PRIMES: List[int] = []


def is_factor(num: int, factor: int) -> bool:
    """Return True if factor is a devisor of num."""
    if num % factor == 0:
        return True
    return False


def is_prime(num: int) -> bool:
    """Return True if num is prime."""
    if num in PRIMES:
        return True
    for i in range(2, num // 2):
        if num % i == 0:
            return False
    PRIMES.append(num)
    return True


PRIME_FACTORS: List[int] = []
if __name__ == "__main__":
    print("The greatest prime factor of", NUMBER, "is:")
    for integer in range(3, highest_possible_factor, 2):
        if is_factor(NUMBER, integer) and is_prime(integer):
            PRIME_FACTORS.append(integer)
    print(PRIME_FACTORS[-1])

    print("Run time: ~", round(time.time() - start_time, 2), "seconds")
