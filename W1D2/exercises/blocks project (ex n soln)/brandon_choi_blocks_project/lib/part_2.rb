def all_words_capitalized?(arr)
    arr.all? {|word|word == word.capitalize}
end

def no_valid_url?(arr)
    arr.none? {|word|checked(word)}
end

def checked(word)
    urls = [".com", ".net", ".io", ".org"]
    word.each_char.with_index do |char, i|
        if char == "."
            return urls.include?(word[i..-1])
        end 
    end
end

# def no_valid_url?(urls)
#     valid_endings = [".com", ".net", ".io", ".org"]
#     urls.none? do |url|
#         valid_endings.any? {|ending|url.end_with?(ending)}
#     end
# end

def any_passing_students?(arr)
   arr.any? do |student|
        average = student[:grades].sum / (student[:grades].length * 1.0)
        average >= 75
   end
end


