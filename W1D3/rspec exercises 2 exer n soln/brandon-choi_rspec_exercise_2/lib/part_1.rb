# def partition(array, n)
#     new_arr = Array.new(2) {Array.new(0)}
#     array.each do |ele|
#         if ele < n
#             new_arr[0] << ele
#         else
#             new_arr[1] << ele
#         end
#     end
#     new_arr
# end

# def partition(array, num)
#     arr = [[],[]]
#     array.each do |ele|
#         arr[0] << ele if ele < num
#         arr[1] << ele if ele >= num
#     end
#     arr
# end

# p partition([11, 5, 13, 2, 3], 7) # => [[5, 2, 3], [11, 13]]
# p partition([1, 2, 4, 3, 5, 7], 5) # => [[1, 2, 4, 3], [5, 7]]
# p partition([1, 2, 4, 3], 0) # => [[], [1, 2, 4, 3]]

# def merge(hash1, hash2)
#     new_hash = {}
#     hash1.each {|k,v|new_hash[k]=v}
#     hash2.each {|k,v|new_hash[k]=v}
#     new_hash
# end

# def merge(hash1, hash2)
#     new_hash = {}
#     hash1.each {|k,v|new_hash[k]=v}
#     hash2.each {|k,v|new_hash[k]=v}
#     new_hash
# end

# def censor(sentence, array)
#     words = sentence.split
#     new_words = []
#     words.each do |word|
#         if array.include?(word.downcase)
#             new_words << changed(word)
#         else
#             new_words << word
#         end
#     end

#     new_words.join(" ")
# end

# def changed(word)
#     vowels = "aeiouAEIOU"
#     new_word = ""
#     word.each_char do |char|
#         if vowels.include?(char)
#             new_word += *
#         else
#             new_word += char
#         end
#     end
#     new_word
# end

# def censor(sentence, array)
#     words = sentence.split
#     new_words = []
#     words.each do |word|
#         if array.include?(word.downcase)
#             new_words << replaced(word)
#         else
#             new_words << word
#         end
#     end
#     new_words.join(" ")
# end

# def replaced(word)
#     vowels = "aeiouAEIOU"
#     new_word = ""
#     word.each_char do |char|
#         if vowels.include?(char)
#             new_word += "*"
#         else
#             new_word += char
#         end
#     end
#     new_word
# end

# def power_of_two?(number)
#     (0..number).each do |i|
#         return true if 2 ** i == number
#     end
#     return false
# end

# def power_of_two?(number)
#     (0..number).each do |i| 
#         return true if 2 ** i == number
#     end
#     return false
# end

def power_of_two?(number)
    product = 1
    while product < number
        product *= 2
    end
    product == number
end