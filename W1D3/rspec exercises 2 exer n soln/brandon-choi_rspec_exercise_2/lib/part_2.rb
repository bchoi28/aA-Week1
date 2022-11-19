def palindrome?(string)
    new_string = ""
    string.each_char do |char|
        new_string = char + new_string
    end
    string == new_string
end

p palindrome?("tot") # => (true)
p palindrome?("racecar") # => (true)
p palindrome?("madam") # => (true)
p palindrome?("aa") # => (true)
p palindrome?("a") # => (true)

p palindrome?("cat") # => (false)
p palindrome?("greek") # => false)
p palindrome?("xabcx") # => (false)

def substrings(string)
    substrings = []
    (0...string.length).each do |idx1|
        (idx1...string.length).each do |idx2|
            substrings << string[idx1..idx2]
        end
    end
    substrings
end

def palindrome_substrings(string)
    substrings(string).select {|sub|palindrome?(sub)}
end