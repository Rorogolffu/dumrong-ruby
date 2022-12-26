# When done, submit this entire file to the autograder.

# Part 1

# Calculates the sum of all elements in the given array
def sum(arr)
  arr.inject(0, :+)
end

# Calculates the sum of the two largest elements in the given array
def max_2_sum(arr)
  # Check if the array is empty or has only one element
  if arr.empty?
    0
  elsif arr.length == 1
    arr[0]
  else
    # Sort the array and sum the two largest elements
    arr.sort[-2, 2].inject(0, :+)
  end
end



# Returns true if there are any two elements in the given array that sum to the given number, false otherwise
def sum_to_n?(arr, n)
  arr.combination(2).any? { |a, b| a + b == n }
end


# Part 2

# Returns a greeting for the given name
def hello(name)
  "Hello, #{name}"
end

# Returns true if the given string starts with a consonant, false otherwise
def starts_with_consonant?(s)
  s =~ /^[^aeiouAEIOU\W]/
end

# Returns true if the given string is a valid binary number that is a multiple of 4, false otherwise
def binary_multiple_of_4?(s)
  s =~ /^[01]+$/ && s.to_i(2) % 4 == 0
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    "$#{'%.2f' % price}"
  end
end
