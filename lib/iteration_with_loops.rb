require 'pry'
def find_even_values(src)
  # Given an Array of Arrays of Integers ( [ [10, 11], [99, 50, 3, 4], [23, 41] ] ):
  #
  # Output all even values in each nested array
  return_array = []
  outerCount = 0
  innerCount = 0

  while src[outerCount]
    while src[outerCount][innerCount]
      currentNumber = src[outerCount][innerCount]
      return_array << currentNumber if currentNumber % 2 == 0
      innerCount += 1
    end
    innerCount = 0
    outerCount += 1
  end
  return_array
end