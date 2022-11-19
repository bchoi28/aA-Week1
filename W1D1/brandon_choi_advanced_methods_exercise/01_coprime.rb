# Write a method, coprime?(num_1, num_2), that accepts two numbers as args.
# The method should return true if the only common divisor between the two numbers is 1.
# The method should return false otherwise. For example coprime?(25, 12) is true because
# 1 is the only number that divides both 25 and 12.

# create an array of factors or num1, num2
# iterate through num1 factors and ask if each factor is also a factor in num2 array of factors
# return false if a duplicate exists
# return true at the end

def coprime?(num_1, num_2)
    num1factors = factors(num_1)
    num2factors = factors(num_2)

    num1factors.each do |factor|
        if num2factors.include?(factor) && factor != 1
            return false
        end
    end

    return true
end

def factors(num)
    factors = []

    (1..num).each do |factor|
        if num % factor == 0
            factors << factor
        end
    end

    return factors
end

p coprime?(25, 12)    # => true
p coprime?(7, 11)     # => true
p coprime?(30, 9)     # => false
p coprime?(6, 24)     # => false
