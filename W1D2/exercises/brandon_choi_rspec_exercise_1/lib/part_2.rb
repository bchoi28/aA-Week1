#Part_2

def hipsterfy(word)
    vowels = "aeiouAEIOU"
    reversed = word.reverse
    reversed_new_word = ''

    reversed.each_char.with_index do |char, i|
        if vowels.include?(char)    #citon
            reversed_new_word = reversed[0...i] + reversed[i+1..-1]
            return reversed_new_word.reverse
        else
            return word
        end
    end
end

def hipsterfy(word)
    vowels = "aeiouAEIOU"
    i = word.length - 1
    while i >= 0
        if vowels.include?(word[i])
            return word[0...i] + word[i+1..-1]
        end
        i -= 1
    end
    word
end
p hipsterfy("tonic") # => "tonc"
p hipsterfy("my") # => "my"


def vowel_counts(string)
    count = Hash.new(0)
    vowels = "aeiouAEIOU"
    string.each_char do |char|
        if vowels.include?(char)
            count[char.downcase] += 1
        end
    end
    count
end

p vowel_counts("WILLIAMSBURG bridge") # => {"i"=>3, "a"=>1, "u"=>1, "e"=>1})


def caesar_cipher(message, n)
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    new_message = ""
    message.each_char.with_index do |char, i|
        if alphabet.include?(char)
            old_idx = alphabet.index(char)
            new_idx = old_idx + n
            new_char = alphabet[new_idx % 26]
            new_message += new_char
        else
            new_message += char
        end            
    end
    return new_message
end
p caesar_cipher("apple", 1) # => "bqqmf"
p caesar_cipher("123 _-!?@%", 3) # => "123 _-!?@%"

