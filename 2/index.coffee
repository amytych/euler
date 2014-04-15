# http://projecteuler.net/problem=2
# Even Fibonacci numbers
# SOLVED

# Limit Fibonacci terms to four million
limit = 4000000
# The sum we're looking for
sum = 0
# The number to count Fibonnaci sequence
i = 0
# Count Fibonacci sequence for x
fib = (x) -> if x <= 1 then x else (fib(x-1) + fib(x-2))

while 1
  term = fib(i++)
  if term > limit then break
  if term % 2 is 0 then sum += term

console.log sum