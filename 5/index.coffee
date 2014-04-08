isDivisible = (range) ->
  (number) ->
    for i in [range[0]..range[1]]
      return false unless number % i is 0
    return true

isDivisible15 = isDivisible([1, 15])
isDivisible20 = isDivisible([1, 20])
# counter = 0
# findSmallestNumber = (number) ->
#   return number if isDivisible20(number)
#   console.log counter++
#   findSmallestNumber(number + 20)
number = 20
foundNumber = 0
while number
  if isDivisible20(number)
    foundNumber = number
    break
  number += 20

console.log(foundNumber)