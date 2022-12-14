# Debug this code to pass rspec! There are 3 mistakes to fix.

# Write a method, letter_count, that accepts a string and char as args. 
# The method should return the number of times that the char appears in the string.

require "byebug"

def letter_count(string, char)
    count = 0
    string.each_char do |c| 
        count += 1 if c.upcase == char.upcase 
    end
    count
end

p letter_count("apple", "p") # => (2)
p letter_count("apple", "q") # => (0)
p letter_count("MISSIPPI", "i") # => (3)