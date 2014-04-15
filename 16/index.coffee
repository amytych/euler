bigInt = require 'big-integer'

pow = (n, exp) ->
  # convert exponent to binary
  binary = exp.toString(2)
  # Ignore left most 1
  binary = binary.substr(1)
  # Substitute 'S8' for 1 and 'S' for 0
  binaryArray = binary.split('')
  # Construct S array
  sArray =[]
  for i in [0...binaryArray.length]
    sArray.push('S')
    sArray.push(n) if binaryArray[i] is '1'

  prod = n
  for i in [0...sArray.length]
    if sArray[i] is 'S'
      prod = bigInt(prod).multiply(prod)
    else
      prod = bigInt(prod).multiply(n)
  prod

sum = (n) ->
  str = n.toString().split('')
  sum = 0
  sum += parseInt(i, 10) for i in str
  sum

power = pow(2, 1000)
# powerBigInt = bigInt(power)
# console.log powerBigInt, power, sum(power)
console.log power.toString(), sum(power)