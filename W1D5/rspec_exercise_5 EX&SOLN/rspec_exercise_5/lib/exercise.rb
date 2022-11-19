require "byebug"

def zip(*arrays)
    length = arrays.first.length

    (0...length).map do |i| # [0, 1, 2]
        arrays.map { |array| array[i] } # |['a', 'b', 'c']| 'a'
    end
end

array_1 = ['a', 'b', 'c'] 
array_2 =  [1, 2, 3]
array_3 =  ['w', 'x', 'y'] 

zip(array_1, array_2) # =>([["a", 1], ["b", 2], ["c", 3]])

# def prizz_proc(arr, prc1, prc2)
#     new_arr = []
#     arr.each do |ele|
#         new_arr << ele if (prc1.call(ele) && !prc2.call(ele)) || (!prc1.call(ele) && prc2.call(ele))
#     end
#     new_arr
# end

# def zany_zip(*arrays)
#     length = arrays.map(&:length).max

#     (0...length).map do |i|
#         arrays.map { |array| array[i] }
#     end
# end

# def maximum

