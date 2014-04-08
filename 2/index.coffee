limit = 4000000
sum = 0
i = 0

fib = (x) -> if x <= 1 then x else (fib(x-1) + fib(x-2))

while 1
  term = fib(i++)
  if term > limit then break
  if term % 2 is 0 then sum += term

console.log sum