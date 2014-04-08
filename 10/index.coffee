isPrime = (num) ->
  c = 3
  return false if num < 2
  return false if num % 1 isnt 0
  return false if num isnt 2 and num % 2 is 0
  while (c <= Math.sqrt(num))
    return false if num % c is 0
    # discard even numbers
    c += 2
  return true

counter = 3
sum = 2
while counter < 2000000
  sum += counter if isPrime(counter)
  counter += 2

console.log sum