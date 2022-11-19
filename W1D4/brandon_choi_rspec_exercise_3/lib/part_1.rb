require "byebug"

def is_prime?(num)
    (2...num).each do |factor|
        return false if num % factor == 0
    end
    num > 1
end

def nth_prime(n)
    # iterate from 0 to forever, stop when count = n
    # initialize a counter that only increments whenever we hit a new prime
    # regardless of whether we increment that counter,
    # we need to increment what number we're looking at

    count = 0
    current_num = 0
    while count < n
        current_num += 1
        if is_prime?(current_num)
            count += 1
        end
    end
    current_num
end

p nth_prime(4) # => (7)

def prime_range(min, max)
    (min..max).select {|ele|is_prime?(ele)}
end