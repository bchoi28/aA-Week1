# #anti_prime?
# def anti_prime?(number)
#     (1..number).each { |num| return false if factors(num).length > factors(number).length }
#     true
# end

# def factors(number)
#     factors = []
#     (1..number).each {|factor|factors << factor if number % factor == 0}
#     factors
# end

# p anti_prime?(24)   # true
# p anti_prime?(36)   # true
# p anti_prime?(48)   # true
# p anti_prime?(360)  # true
# p anti_prime?(1260) # true
# p anti_prime?(27)   # false
# p anti_prime?(5)    # false
# p anti_prime?(100)  # false
# p anti_prime?(136)  # false
# p anti_prime?(1024) # false


#matrix_addition
# def matrix_addition(matrix1, matrix2)
#     new_matrix = []
#     final_matrix = []
#     flat1 = matrix1.flatten  #[2,5,4,7]
#     flat2 = matrix2.flatten  #[9,1,3,0]

#     i = 0
#     while i < flat1.length
#         new_matrix << flat1[i] + flat2[i]
#         i += 1
#     end 

#     i = 0
#     while i < new_matrix.length
#         final_matrix << [new_matrix[i], new_matrix[i+1]]
#         i += 2
#     end

#     final_matrix
# end

# def matrix_addition(m1, m2)
#     outer_arr = []
#     sub_arr = []
#     (0...m1.length).each do |idx1|
#         (0...m1.length).each do |idx2|
#             sum = m1[idx1][idx2] + m2[idx1][idx2]
#             sub_arr << sum
#         end
#         outer_arr << sub_arr
#         sub_arr = []
#     end
#     outer_arr
# end

# matrix_a = [[2,5], [4,7]]
# matrix_b = [[9,1], [3,0]]
# matrix_c = [[-1,0], [0,-1]]
# matrix_d = [[2, -5], [7, 10], [0, 1]]
# matrix_e = [[0 , 0], [12, 4], [6,  3]]

# p matrix_addition(matrix_a, matrix_b) # [[11, 6], [7, 7]]
# p matrix_addition(matrix_a, matrix_c) # [[1, 5], [4, 6]]
# p matrix_addition(matrix_b, matrix_c) # [[8, 1], [3, -1]]
# p matrix_addition(matrix_d, matrix_e) # [[2, -5], [19, 14], [6, 4]]


# #mutual_factors
# def mutual_factors(*num)
#     all_factors = []
#     mutuals = []
#     num.each do |n|
#         all_factors << factored(n)
#     end
#     flat_factors = all_factors.flatten

#     count = Hash.new(0)
#     flat_factors.each do |factor|
#         count[factor] += 1
#     end

#     count.each do |k,v|
#         if v == all_factors.length
#             mutuals << k
#         end
#     end

#     mutuals
# end

# def factored(num)
#     factors = []
#     (1..num).each do |factor|
#         if num % factor == 0
#             factors << factor
#         end
#     end
#     factors
# end

# p mutual_factors(50, 30)            # [1, 2, 5, 10]
# p mutual_factors(50, 30, 45, 105)   # [1, 5]
# p mutual_factors(8, 4)              # [1, 2, 4]
# p mutual_factors(8, 4, 10)          # [1, 2]
# p mutual_factors(12, 24)            # [1, 2, 3, 4, 6, 12]
# p mutual_factors(12, 24, 64)        # [1, 2, 4]
# p mutual_factors(22, 44)            # [1, 2, 11, 22]
# p mutual_factors(22, 44, 11)        # [1, 11]
# p mutual_factors(7)                 # [1, 7]
# p mutual_factors(7, 9)              # [1]


# #tribonacci_number
# def tribonacci_number(n)
#     return 1 if n == 1
#     return 1 if n == 2
#     return 2 if n == 3

#     seq = [1, 1, 2]
#     while seq.length < n
#         last = seq[-1]
#         secondtolast = seq[-2]
#         thirdtolast = seq[-3]
#         next_ele = last + secondtolast + thirdtolast
#         seq << next_ele
#     end
#     seq[-1]
# end

# p tribonacci_number(1)  # 1
# p tribonacci_number(2)  # 1
# p tribonacci_number(3)  # 2
# p tribonacci_number(4)  # 4
# p tribonacci_number(5)  # 7
# p tribonacci_number(6)  # 13
# p tribonacci_number(7)  # 24
# p tribonacci_number(11) # 274

def anti_prime?(num)
    (1...num).each do |ele|
        return false if divisors(ele) > divisors(num)
    end
    true
end

def divisors(ele)
    count = 0
    (1..ele).each do |factor|
        if ele % factor == 0
            count += 1
        end
    end
    count
end

p anti_prime?(24)   # true
p anti_prime?(36)   # true
p anti_prime?(48)   # true
p anti_prime?(360)  # true
p anti_prime?(1260) # true
p anti_prime?(27)   # false
p anti_prime?(5)    # false
p anti_prime?(100)  # false
p anti_prime?(136)  # false
p anti_prime?(1024) # false

def matrix_addition(m1, m2)
    
end

def tribonacci_number(n)
    if n =1, return 
    seq = [1, 1, 2]
end

def matrix_addition(m1, m2)
    outer = []
    inner = []
    (0...m1.length).each do |idx1|
        (0..2).each do |idx2|
            sum = m1[idx1][idx2] + m2[idx1][idx2]
            inner << sum
        end
        outer << inner
        inner = []
    end
    outer
end