# When done, submit this entire file to the autograder.

# Part 1

def sum (arr)
  s=0
  arr.each{|a| s+=a}
  s
end

def max_2_sum (arr)
  while (n!=0)
    for i in (0...n)
      for j in (i+1..n)
        if (arr[i]>=arr[j])
          t=arr[i]
          arr[i]=arr[j]
          arr[j]=t
        end
      end
    end
    return arr[n]+arr[n-1]    
  end 
end

def sum_to_n?( arr, n)
    count=0
    for i in (0...arr.Size)
      for j in (i+1..arr.Size)
        if ( arr[i] + arr[j] == n )
          count+=1
        end
      end
    end
    if ( count != 0 )
      return true 
    else
      return false
    end
end

# Part 2

def hello(name)
  return "Hello"
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
