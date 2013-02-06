# A palindromic number reads the same both ways. The largest palindrome made
# from the product of two 2-digit numbers is 9009 = 91 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

isPalindrome = (num) ->
  # This will only work for positives
  return false if num < 0

  # Divider will split left half of num, digit by digit, for comparison
  divider = 1
  divider *= 10 while (num / divider) >= 10

  # Checking for palindrome by breaking num down each time outer digits agree
  while num isnt 0
    left = Math.floor num / divider
    right = num % 10
    # If the outer digits don't agree, we say no palindrome
    return false if left isnt right

    # Now we need to set up for the next iteration, so we chop left most digit
    # by taking the remainder from divider and chop right most digit by
    # dividing by 10
    num = Math.floor (num % divider) / 10
    # Set up divider for next iteration as 2 powers less than before since we
    # lost 2 powers of num
    divider /= 100

  # If we have reached this point, we have a palindrome!
  true

solution = ->
  largestPalindrome = 0

  # Nested looping over all multiples of num1 and num2
  # I'm not happy with the efficiency of the logic
  for num1 in [999..0] by -1
    for num2 in [999..0] by -1
      product = num1 * num2
      # Check to see if we have the largest palindrome this iteration
      if isPalindrome(product) and product > largestPalindrome
        largestPalindrome = product

  largestPalindrome

console.log solution()
