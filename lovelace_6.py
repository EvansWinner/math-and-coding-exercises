"""Approximate pi."""
import sys

ERROR_MESSAGE = "arg must be a non-zero natural number"


def error(msg: str):
    """Print an error message and exit."""
    print(msg)
    sys.exit(1)


def pi_approx(k: int) -> float:
    """Generate an approximation of pi by summing k terms."""
    accum = 0
    for num in range(0, k):
        accum += ((-1) ** num) / (2 * num + 1)
    return accum * 4


if __name__ == "__main__":
    if len(sys.argv) != 2:
        error(ERROR_MESSAGE)
    try:
        arg = int(sys.argv[1])
    except ValueError:
        error(ERROR_MESSAGE)
    if arg < 1:
        error(ERROR_MESSAGE)
    else:
        print(pi_approx(arg))
