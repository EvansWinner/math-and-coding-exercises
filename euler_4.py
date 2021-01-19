"""Brute force Project Euler #4."""

candidate = (0, 0, 0)
for i in range(999, 99, -1):
    for j in range(999, 99, -1):
        product = i * j
        if product <= candidate[2]:
            # short-circuit as there can't be any higher products
            # from lower productands
            break
        elif str(product) == str(product)[::-1]:
            candidate = (i, j, product)
            break

print(candidate)
