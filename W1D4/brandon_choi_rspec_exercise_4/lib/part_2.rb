# def proper_factors(num)
#     (1...num).select {|n|num % n == 0}
# end

# def aliquot_sum(num)
#     proper_factors(num).sum
# end

# def perfect_number?(num)
#     num == aliquot_sum(num)
# end

# def ideal_numbers(n)
#     arr = []
#     current_num = 1
#     while arr.length < n
#         current_num += 1
#         if perfect_number?(current_num)
#             arr << current_num
#         end
#     end
#     arr
# end
require "byebug"
def proper_factors (num)
   return (1...num).select {|ele|num % ele == 0}
end

def aliquot_sum(num)
    proper_factors(num).sum
end

def perfect_number?(num)
    aliquot_sum(num) == num
end
# debugger
def ideal_numbers(n)
    arr = []
    current = 1
    while arr.length < n
        current += 1
        if perfect_number?(current)
            arr << current
        end
    end
    arr
end

p ideal_numbers(2)# => [6, 28])
p ideal_numbers(3)# => [6, 28, 496])