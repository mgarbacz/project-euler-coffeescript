# The prime factors of 13195 are 5, 7, 13, and 29.

# What is the largest prime factor of the number 600851475143?

solution = ->
  input = 600851475143
  # Starting from 2, the smallest prime number
  index = 2
  
  # We will use the unique factorization theorem as the basis for the algorithm
  while input > index
    # Reduce input by a factor of index if the index is a factor of the input
    input /= index if input % index is 0
    # Move on to next index
    index++

  # The resulting index value is the largest prime factor
  index

console.log solution()
