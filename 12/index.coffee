factorCount = 0
triangle = [22838661, 6758]

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

# Find how many factors there are for a specific number
howManyFactors = (num) ->
  s = 0
  for i in [1..Math.ceil(num / 2)]
    s += 1 if num % i is 0
  s

# Find n-th triangle
findNextTriangle = (n) -> [n[0] + (n[1] + 1), n[1] + 1]

while 1
  triangle = findNextTriangle(triangle)
  factorCount = howManyFactors(triangle[0]) unless isPrime(triangle[0])
  console.log triangle, factorCount
  break if factorCount >= 500

# console.log findNextTriangle([21, 6])
console.log triangle, factorCount