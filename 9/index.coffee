pair = [1, 2]
k = 1
sum = 0
product = 0
sqr = (n) -> n * n
isTriplet = (t) -> sqr(t[0]) + sqr(t[1]) is sqr(t[2])
getSum = (t) -> t[0] + t[1] + t[2]
getProduct = (t) -> t[0] * t[1] * t[2]
findTriplet = (p) -> [k * (sqr(p[1]) - sqr(p[0])), k * (2 * p[1] * p[0]), k * (sqr(p[1]) + sqr(p[0]))]
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

findNextPair = (p) ->
  dif = p[1] - p[0]
  return p if p[1]

while 1
  triplet = findTriplet(pair)
  sum = getSum(triplet)
  product = getProduct(triplet)
  console.log triplet, sum

  # Found the holly grail
  break if sum = 1000

  # Try increasing on pair[0]
  pair[0]++ if sum > 1000
  # [pair[0], pair[1]] = [++pair[0], ++pair[1]]

# triplet = findTriplet(pair)
# console.log triplet
# console.log isTriplet(triplet)

console.log triplet
console.log sum
console.log product
