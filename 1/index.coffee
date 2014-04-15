# http://projecteuler.net/problem=1
# Multiples of 3 and 5
# SOLVED

findSum = (max) ->
  sum = 0
  while --max
    sum += max if max % 3 is 0 or max % 5 is 0
  sum

console.log findSum(1000)