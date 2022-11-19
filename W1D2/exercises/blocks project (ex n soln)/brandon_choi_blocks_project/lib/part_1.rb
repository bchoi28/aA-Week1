def select_even_nums(arr)
    arr.select {|n|n.even?}
end

def reject_puppies(arr)
    arr.reject {|hash|hash["age"]<=2 }
end

def count_positive_subarrays(arr)
    arr.count {|sub|sub.sum >0}
end

def aba_translate(word)
    vowels = "aeiouAIEOU"
    new_word = ""
    word.each_char do |char|
        if vowels.include?(char)
            new_word += char + "b" + char
        else
            new_word += char
        end
    end
    new_word
end

def aba_array(arr)
    arr.map {|word|aba_translate(word)}
end
