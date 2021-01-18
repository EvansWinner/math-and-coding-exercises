""" Advent of Code 2015, number 1, interactive."""

import sys

floor: int = 0
command: str = ''
while True:
    print('You are currently on floor ' + str(floor))
    print("Type '(' to go up and ')' to go down. 'q' to quit.")
    command = input()
    for char in command:
        if char == '(':
            floor+= 1
        elif char == ')':
            floor -= 1
        elif char == 'q' or char  == 'Q':
            print('You are getting off on floor ' + str(floor))
            sys.exit()


