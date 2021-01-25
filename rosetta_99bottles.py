"""99 Bottles of Beer on the wall. Now with grammar and number words."""

from typing import Dict

IWORDS: Dict[int, str] = {
    0: "no",
    1: "one",
    2: "two",
    3: "three",
    4: "four",
    5: "five",
    6: "six",
    7: "seven",
    8: "eight",
    9: "nine",
    10: "ten",
    11: "eleven",
    12: "twelve",
    13: "thirteen",
    14: "fourteen",
    15: "fifteen",
    16: "sixteen",
    17: "seventeen",
    18: "eighteen",
    19: "ninteeen",
    20: "twenty",
    30: "thirty",
    40: "forty",
    50: "fifty",
    60: "sixty",
    70: "seventy",
    80: "eighty",
    90: "ninty",
}


def add_s_maybe(word: str, num: int) -> str:
    """Add an 's' to the end of a word if n is other than 1."""
    if num == 1:
        return word
    return word + "s"


def itoword(i: int) -> str:
    """Translate a one- or two-digit number to it's number word."""
    if i in IWORDS:
        return IWORDS[i]
    return IWORDS[i - i % 10] + "-" + IWORDS[i % 10]


if __name__ == "__main__":
    for b in range(99, 0, -1):
        print(
            itoword(b).capitalize()
            + " "
            + add_s_maybe("bottle", b)
            + " of beer on the wall,"
        )
        print(itoword(b).capitalize() + " " + add_s_maybe("bottle", b) + " of beer! --")
        print("Take one down, pass it around,")
        print(
            itoword(b - 1).capitalize()
            + " "
            + add_s_maybe("bottle", b - 1)
            + " of beer on the wall!\n"
        )
