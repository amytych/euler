findSum = (max) ->
  sum = 0
  while --max
    sum += max if max % 3 is 0 or max % 5 is 0
  sum

findSum(1000)