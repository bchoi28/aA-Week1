# #iterate through the string and ask if the next character is the same
# # if so, ask if the next character is the same
# #so you need a loop of asking if the next character is the same
# #you exit the loop when the next character isnt the same
# #when you exit the loop, increment the main count by 1

# def duos(string)
#     count = 0
#     string.each_char.with_index do |char, idx|
#         if string[idx] == string[idx+1]
#             count += 1
#         end
#     end
#     count
# end

# p duos('bootcamp')      # 1
# p duos('wxxyzz')        # 2
# p duos('hoooraay')      # 3
# p duos('dinosaurs')     # 0
# p duos('e')             # 0

# def sentence_swap(sentence, hash)
#     words = sentence.split
#     new_words = words.map do |word|
#         if hash.has_key?(word)
#             hash[word]
#         else
#             word
#         end
#     end
#     new_words.join(" ")
# end

# p sentence_swap('anything you can do I can do',
#     'anything'=>'nothing', 'do'=>'drink', 'can'=>'shall'
# ) # 'nothing you shall drink I shall drink'

# p sentence_swap('what a sad ad',
#     'cat'=>'dog', 'sad'=>'happy', 'what'=>'make'
# ) # 'make a happy ad'

# p sentence_swap('keep coding okay',
#     'coding'=>'running', 'kay'=>'pen'
# ) # 'keep running okay'

# def hash_mapped(hash, prc, &blc)
#     new_hash = {}
#     hash.each do |k,v|
#         new_key = blc.call(k)
#         new_value = prc.call(v)
#         new_hash[new_key] = new_value
#     end
#     new_hash
# end

# double = Proc.new { |n| n * 2 }
# p hash_mapped({'a'=>4, 'x'=>7, 'c'=>-3}, double) { |k| k.upcase + '!!' }
# # {"A!!"=>8, "X!!"=>14, "C!!"=>-6}

# first = Proc.new { |a| a[0] }
# p hash_mapped({-5=>['q', 'r', 's'], 6=>['w', 'x']}, first) { |n| n * n }
# # {25=>"q", 36=>"w"}

# def counted_characters(string)
#     twice = []
#     count = Hash.new(0)
#     string.each_char do |char|
#         count[char] += 1
#     end
#     count.each do |k,v|
#         if v > 2
#             twice << k
#         end
#     end
#     twice
# end

# p counted_characters("that's alright folks") # ["t"]
# p counted_characters("mississippi") # ["i", "s"]
# p counted_characters("hot potato soup please") # ["o", "t", " ", "p"]
# p counted_characters("runtime") # []

# def triplet_true(string)
#     string.each_char.with_index do |char, i|
#         if string[i] == string[i+1] && string[i] == string[i+2]
#             return true 
#         end
#     end
#     false
# end

# p triplet_true('caaabb')        # true
# p triplet_true('terrrrrible')   # true
# p triplet_true('runninggg')     # true
# p triplet_true('bootcamp')      # false
# p triplet_true('e')             # false

# def energetic_encoding(string, hash)
#     new_string = ""

#     string.each_char do |char|
#         if hash.has_key?(char)
#             new_string += hash[char]
#         elsif char == " "
#             new_string += char
#         else
#             new_string += "?"
#         end
#     end
#     new_string
# end

# p energetic_encoding('sent sea',
#     'e'=>'i', 's'=>'z', 'n'=>'m', 't'=>'p', 'a'=>'u'
# ) # 'zimp ziu'

# p energetic_encoding('cat',
#     'a'=>'o', 'c'=>'k'
# ) # 'ko?'

# p energetic_encoding('hello world',
#     'o'=>'i', 'l'=>'r', 'e'=>'a'
# ) # '?arri ?i?r?'

# p energetic_encoding('bike', {}) # '????'


def uncompress(string)
   new_string = ""
   alphabet = "abcdefghijklmnopqrstuvwxyz"
   string.each_char.with_index do |char, i|
        if alphabet.include?(char)
            new_string += char * string[i+1].to_i
        end
   end
   new_string
end

p uncompress('a2b4c1') # 'aabbbbc'
p uncompress('b1o2t1') # 'boot'
p uncompress('x3y1x2z4') # 'xxxyxxzzzz'