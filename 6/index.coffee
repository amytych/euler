limit = 10
sum = 0
sumSqr = 0
sqr = (number) -> number * number
sumOfSquares = sumSqr += sqr(i) for i in [1..limit]
sumToSqr = sum += i for i in [1..limit]
squareOfSum = sqr(sumToSqr)
console.log squareOfSum - sumOfSquares