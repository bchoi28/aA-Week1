#first_letter_vowel_count
def first_letter_vowel_count(sentence)
    vowels = "aeiouAEIOU"
    count = 0
    words = sentence.split
    words.each do |word|
        if vowels.include?(word[0])
            count += 1
        end
    end
    count
end


#count_true
def count_true(arr, prc)
    count = 0
    arr.each do |ele|
        if prc.call(ele) == true 
            count += 1
        end
    end
    count
end



#procformation
def procformation(arr, is_positive, square_it, minus_hundred)
    new_arr = []
    arr.each do |num|
        if is_positive.call(num) == true
            new_arr << square_it.call(num)
        else
            new_arr << minus_hundred.call(num)
        end
    end
    new_arr
end


#array_of_array_sum
def array_of_array_sum(outerarray)
    outerarray.flatten.sum
end

#selective_reverse
def selective_reverse(sentence)
    vowels = "aeiouAEIOU"
    words = sentence.split
    words.map do |word|
        if vowels.include?(word[0].downcase)
            word
        elsif vowels.include?(word[-1].downcase)
            word
        else
            word.reverse!
        end
    end
    words.join(" ")
end

#hash_missing_keys
def hash_missing_keys(hash, *args)
    arr = []
    args.each do |arg|
        if !hash[arg]
            arr << arg
        end
    end
    arr
end
