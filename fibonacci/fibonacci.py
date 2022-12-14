"""
This is a Python prototype of the Fibonacci sequence.
I am dumb and dont know assembly, so I'm using this as a guide
before I program it for the 6502.
"""
import time

n1 = 0
n2 = 1

while True:
    fib_number = n1 + n2
    n1 = n2
    n2 = fib_number
    print(fib_number)
    time.sleep(0.1)
    