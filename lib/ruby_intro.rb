# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  
  if arr.length == 0
    return 0
  else
    return arr.inject(0, :+)
  end
  # YOUR CODE HERE
end

def max_2_sum arr
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    return sum(arr.sort.reverse.first(2))
  end
  # YOUR CODE HERE
end

def sum_to_n? arr, n
  if arr.empty?
    return false
  else
    arr.permutation(2).any? do |a, b|
      a + b == n
    end
  end
  # YOUR CODE HERE
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  if s[0] == 'A' or s[0] == 'E' or s[0] == 'I' or s[0] == 'O' or s[0] == 'U' or s[0] == 'a' or s[0] == 'e' or s[0] == 'i' or s[0] == 'o' or s[0] == 'u'
    return false
  elsif s.empty?
    return false
  elsif s[0] =~ /[a-zA-Z]/
    return true
    
  else
    return false
  end
end

def binary_multiple_of_4? s
  if s =~ /[a-zA-Z2-9!@#$%^&*()_+]/
    return false
    
  elsif s.empty?
    return false
  elsif (s.to_i % 4 != 0)
    return false
  else 
    return true
  end
  # YOUR CODE HERE
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  def initialize(isbn, price)
    if isbn.empty? 
      raise(ArgumentError, "ISBN empty error")
    elsif price <= 0
      raise ArgumentError.new("price less or equal to 0 error")
    else
      @isbn = isbn
      @price = price
    end
  end
  
  def price_as_string
    return "$" + sprintf("%.2f", @price)
  end
      
# YOUR CODE HERE
end