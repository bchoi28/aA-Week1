# #strange_sums
# def strange_sums(array)
#     count = 0
#     array.each_with_index do |n1, idx1|
#         array.each_with_index do |n2, idx2|
#             if idx2 > idx1 && n1 + n2 == 0
#                 count += 1
#             end
#         end
#     end
#     count
# end

# p strange_sums([2, -3, 3, 4, -2])     # 2
# p strange_sums([42, 3, -1, -42])      # 1
# p strange_sums([-5, 5])               # 1
# p strange_sums([19, 6, -3, -20])      # 0
# p strange_sums([9])                   # 0

# #pair_product
# def pair_product(numbers, product)
#     numbers.each_with_index do |n1, idx1|
#         numbers.each_with_index do |n2, idx2|
#             return true if idx2 > idx1 && n1 * n2 == product
#         end
#     end
#     false
# end

# p pair_product([4, 2, 5, 8], 16)    # true
# p pair_product([8, 1, 9, 3], 8)     # true
# p pair_product([3, 4], 12)          # true
# p pair_product([3, 4, 6, 2, 5], 12) # true
# p pair_product([4, 2, 5, 7], 16)    # false
# p pair_product([8, 4, 9, 3], 8)     # false
# p pair_product([3], 12)             # false

# #rampant_repeats
# def rampant_repeats(string, hash)
#     new_string = []
#     string.each_char do |char|
#         if hash[char]   #hash[char] = value
#             new_string << char * hash[char]
#        else
#             new_string << char
#        end
#     end
#     new_string.join("")
# end

# p rampant_repeats('taco', {'a'=>3, 'c'=>2})             # 'taaacco'
# p rampant_repeats('feverish', {'e'=>2, 'f'=>4, 's'=>3}) # 'ffffeeveerisssh'
# p rampant_repeats('misispi', {'s'=>2, 'p'=>2})          # 'mississppi'
# p rampant_repeats('faarm', {'e'=>3, 'a'=>2})            # 'faaaarm'

# #perfect_square?
# def perfect_square(num)
#     (1..num).each { |factor| return true if factor * factor == num }
#     false
# end

# p perfect_square(1)     # true
# p perfect_square(4)     # true
# p perfect_square(64)    # true
# p perfect_square(100)   # true
# p perfect_square(169)   # true
# p perfect_square(2)     # false
# p perfect_square(40)    # false
# p perfect_square(32)    # false
# p perfect_square(50)    # false

# def strange_sums(arr)
#     count = 0
#     arr.each_with_index do |ele1, idx1|
#         arr.each_with_index do |ele2, idx2|
#             if idx2 > idx1 && ele1 + ele2 == 0
#                 count += 1
#             end
#         end
#     end
#     count
# end

# def pair_product(arr, product)

# end

def rampant_repeats(string, hash)
    new_string = ""
    string.each_char do |char|
        if hash.has_key?(char)
            new_string += char * hash[char]
        else
            new_string += char
        end
    end
    new_string
end

p rampant_repeats('taco', {'a'=>3, 'c'=>2})             # 'taaacco'
p rampant_repeats('feverish', {'e'=>2, 'f'=>4, 's'=>3}) # 'ffffeeveerisssh'
p rampant_repeats('misispi', {'s'=>2, 'p'=>2})          # 'mississppi'
p rampant_repeats('faarm', {'e'=>3, 'a'=>2})            # 'faaaarm'

def perfect_square?(num)
    (1..num).each do |factor|
        return true if factor * factor == num
    end
    false
end
