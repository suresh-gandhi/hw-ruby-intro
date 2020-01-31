# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  arr.max(2).reduce(0,:+)
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  ans = false
  if arr.length > 1
    for x in 1..arr.length - 1
      for y in 0..x - 1
        if arr[x] + arr[y] == n
          ans = true
          break
        end
      end
    end
  end
  return ans
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return s =~ /\A(?=[a-z])(?=[^aeiou])/i
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return true if s == "0"
	/^[10]*00$/.match(s) != nil
end

# Part 3

class BookInStock
# YOUR CODE HERE
	def initialize(isbn,price)
		@isbn=isbn
		@price=price
		# exeption 
		if @isbn.empty? || @price <= 0 
			raise ArgumentError
		end
	end
	
	attr_accessor :isbn
	attr_accessor :price

	def price_as_string
		"$#{'%.2f' %  @price}"
	end
end
