#Part_1

def average(num1, num2)
    (num1 + num2) / 2.0
end
p average(4, 8) # => 6


def average_array(array)
    array.sum / (array.length * 1.0)
end
p average_array([2, 4, 6]) # => 4


def repeat(string, number)
    string * number
end
p repeat("happy", 2) #=> "happyhappy"


def yell(string)
    string.upcase + "!"
end
p yell("hello") # => "HELLO!"

def alternating_case(string)
    new_words = []
    string.split.each_with_index do |word, i|
        if i % 2 == 0
            new_words << word.upcase
        else
            new_words << word.downcase
        end
    end
    return new_words.join(" ")
end
p alternating_case("code never lies, comments sometimes do.")
# => "CODE never LIES, comments SOMETIMES do."