"""SPOJ problem 1."""
import sys

ERROR_MESSAGE = "input must be a single two-digit positive integer or zero"


def error(msg: str):
    """Print an error message and exit."""
    print(msg)
    sys.exit(1)


if __name__ == "__main__":
    while True:
        n = input()
        try:
            n = int(n)
        except ValueError:
            error(ERROR_MESSAGE)
        if n > 99 or n < 0:
            error(ERROR_MESSAGE)
        if int(n) != 42:
            print(n)
        else:
            sys.exit(0)
