# 2520 is the smallest number that can be divided by each of the numbers from 1
# to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the
# numbers from 1 to 20?

# Find gcd of a and b using Euclidean Algorithm
gcd = (a, b) ->
  while b isnt 0
    temp = b
    b = a % b
    a = temp

  return a

# Find lcm of a and b using reduction by gcd
lcm = (a, b) ->
  return (a * b) / (gcd a, b)

# Solve by finding lcm progressively
solution = ->
  result = 2520

  for i in [11..20]
    result = lcm result, i

  return result

console.log solution()
