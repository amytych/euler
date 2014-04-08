# start = 100 * 100
# end = 999 * 999
start = 100
end = 999
limit = end
counter = 0
largestPalindrome = 0

reverse = (num) -> num.toString().split('').reverse().join('')
isPalindrome = (num) -> not isNaN(num) and num.toString() is reverse(num)

for i in [start..end]
  for j in [start..end]
    counter++
    test = i * j
    if isPalindrome(test) and test > largestPalindrome
      largestPalindrome = test

console.log counter
console.log largestPalindrome