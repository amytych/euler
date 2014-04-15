counter = 1
winningNumber = 0
maxCounter = 0
iterations = 999999

collatz = (num) ->
  currentNum = if (num % 2 is 0) then num / 2 else 3 * num + 1
  counter++
  return if currentNum is 1
  collatz(currentNum)

while iterations
  collatz(iterations)
  console.log counter, winningNumber
  if counter > maxCounter
    maxCounter = counter
    winningNumber = iterations
  counter = 1
  iterations--

console.log winningNumber