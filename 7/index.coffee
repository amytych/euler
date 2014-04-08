counter = 1
currentPrime = 2
prime = 0
isPrime = (num) ->
  c = 1
  return false if num % 1 isnt 0
  while (++c < num)
    return false if (num <= 1 or num % c is 0)
  return true

getNextPrime = (prime, limit) ->
  prime += 1
  if isPrime(prime) and counter <= limit
    counter++
    return prime
  getNextPrime prime

primeCounter = 0
while 1
  if isPrime(counter)
    console.log primeCounter, counter
    searchedPrime = counter
    primeCounter++
  counter++
  break if primeCounter > 10001

# for i in [1..6]
#   nextPrime = getNextPrime(currentPrime)
#   currentPrime = getNextPrime(nextPrime)

# console.log nextPrime, currentPrime
console.log searchedPrime