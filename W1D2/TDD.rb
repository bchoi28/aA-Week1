# TDD Iteration 1: return false if the number is not prime

def prime?(num)
    (2...num).each do |i|
        return false if num % i == 0
    end
end

p prime?(6) # => false
p prime?(8) # => false
p prime?(9) # => false

# TDD Iteration 2: return true if the number is prime

def prime?(num)
    (2...num).each do |i|
        return false if num % i == 0
    end

    true    #step 3 - make changes to the method
end

p prime?(2) # => true
p prime?(7) # => true
p prime?(1) # => true

# TDD Iteration 3: return false if the number is less than 2, since 2
#   smallest prime number

def prime?(num)

    return false if num < 2     #iteration 3, step 3 - make changes to the method

    (2...num).each do |i|
        return false if num % i == 0
    end

    true    
end

p prime?(1) #=> false
p prime?(0) #=> false
p prime?(-42) #=> false