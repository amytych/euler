num = 600851475143
factor = 2

isPrime = (num) ->
  counter = 1
  return false if num % 1 isnt 0
  while (++counter < num)
    return false if (num <= 1 or num % counter is 0)
  return true

getNextPrime = (prime) ->
  prime += 1
  return prime if isPrime(prime)
  getNextPrime prime


largestPrimeFactor = (factor, num) ->
  # We got the winner
  return num if isPrime(num)

  # Check if number is divisible by factor
  if (num % factor is 0)
    num /= factor
    # Do we have a winner…?
    return num if isPrime(num)
    # we don't, try with next prime factor
    largestPrimeFactor(factor, num)
  # Try with next prime factor
  else
  largestPrimeFactor(getNextPrime(factor), num)


console.log largestPrimeFactor(factor, num)
# console.log getNextPrime(11)