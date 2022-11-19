# # Run `bundle exec rspec` and satisy the specs.
# # You should implement your methods in this file.
# # Feel free to use the debugger when you get stuck.
# require "byebug"

def largest_prime_factor(num)
    (1..num).reverse_each {|n|return n if num % n == 0 && prime?(n)}
end

def prime?(num)
    (2...num).each {|n|return false if num % n == 0}
    num > 1
end

# p largest_prime_factor(15) # => (5)
# p largest_prime_factor(7) # => 7)
# p largest_prime_factor(24) # => (3)
# p largest_prime_factor(2) # => (2)

def unique_chars?(string)
    count = Hash.new(0)
    string.each_char {|char|count[char]+=1}
    !count.any?{|k,v|v>1}
end

# p unique_chars?("dog") # => (true)
# p unique_chars?("mississppi") # => (false)
require "byebug"

def dupe_indices(arr)
    count = Hash.new{|k,v| k[v]=[]}
    arr.each_with_index {|ele, idx| count[ele] << idx }
    count.select {|k,v|v.length>1}
end

p dupe_indices(["a", "b", "c", "c", "b"]) # =>{"b"=>[1,4], "c"=>[2,3]}

def ana_array(arr1, arr2)
    hash1 = Hash.new(0)
    hash2 = Hash.new(0)
    arr1.each {|ele|hash1[ele]+=1}
    arr2.each {|ele|hash2[ele]+=1}
    hash1 == hash2
end

p ana_array(["i","c","e","m","a","n"], ["c","i","n","e","m","a"]) # =>true
p ana_array(["cat", "dog", "cat"], ["dog", "cat", "mouse"]) # => false