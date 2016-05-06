# Part 1

# Define a method sum(array) that takes an array of integers as an argument and returns the sum of its elements.
# For an empty array it should return zero.
def sum (arr)
    s=0
    arr.each{|a| s+=a}
    return s
end

# Define a method max_2_sum(array) which takes an array of integers as an argument and returns the sum of its two largest elements.
# For an empty array it should return zero. For an array with just one element, it should return that element.
def max_2_sum (arr)
    
    s=0
    if (arr.length == 1)
        return arr[0]
    end
    
    if (arr.length == 0)
        return 0
    end
    
    if (!arr.empty?)
        arr=arr.sort{ |x,y| y <=> x }
    end
    
    s= arr[0] + arr[1]
    
    return s
end

# Define a method sum_to_n?(array, n) that takes an array of integers and an additional integer, n,
# as arguments and returns true if any two elements in the array of integers sum to n.
# sum_to_n?([], n) should return false for any value of n, by definition.    
def sum_to_n? (arr, n)
    
    count=false
    
    if !(arr.empty? || arr.length == 1)
        count=!! arr.uniq.combination(2).detect{|a,b| a + b == n}   
    end
    
    return count
end

# # Part 2

# Define a method hello(name) that takes a string representing a name and returns the string "Hello, " concatenated with the name.
def hello(name)
    
    str = "Hello, #{name}"
    return str 
    
end

# Define a method starts_with_consonant?(s) that takes a string and returns true if it starts with a consonant and false otherwise.
# (For our purposes, a consonant is any letter other than A, E, I, O, U.)
def starts_with_consonant? (s)
    start = false
    if ((s =~ /\A(?=[^aeiou])(?=[a-z])/i) == 0)
        start = true
    end
    return start
end

# Define a method binary_multiple_of_4?(s) that takes a string and returns true if the string represents a binary number that is a multiple of 4.
def binary_multiple_of_4? (s)
    isIt = false
    if((s.to_i(2).is_a? Integer) && (s[0] == '0' || s[0] == '1'))
        if(s.to_i(2) % 4 == 0)
            isIt = true
        end
    end
    return isIt
end

# # Part 3

# Define a class BookInStock which represents a book with an ISBN number, isbn, and price of the book as a floating-point number, price, as attributes.
class BookInStock
    
    # as the first argument and price as second argument, and should raise ArgumentError (one of Ruby's built-in exception types)
    # if the ISBN number is the empty string or if the price is less than or equal to zero. Include the proper getters and setters for these attributes.
    def initialize (isbn, price)
        raise ArgumentError, "Argument not valid!" unless
        !(!(price > 0) or !(isbn != ""))
        @isbn = isbn
        @price = price
    end
    
    attr_accessor :isbn
    attr_accessor :price
    
    # Include a method price_as_string that returns the price of the book formatted with a leading dollar sign and two decimal places,
    # that is, a price of 20 should format as "$20.00" and a price of 33.8 should format as "$33.80".
    def price_as_string ()
       return "$#{'%.2f' % @price}" 
    end
    
end
