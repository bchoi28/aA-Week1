# def my_reject(arr, &prc)
#     new_arr = []
#     arr.each {|ele|new_arr << ele if !prc.call(ele)}
#     new_arr
# end

# def my_one?(arr, &prc)
#     count = 0
#     arr.each do |ele|
#         if prc.call(ele) == true
#             count += 1
#         end
#     end
#     if count == 1
#         true
#     else
#         false
#     end
# end

# def hash_select(hash, &prc)
#     new_hash = {}
#     hash.each do |k,v|
#         if prc.call(k,v) == true
#             new_hash[k] = v
#         end
#     end
#     new_hash
# end

# def xor_select(arr, prc1, prc2)
#     arr.select {|ele|(prc1.call(ele) || prc2.call(ele)) && !(prc1.call(ele) && prc2.call(ele))}
# end

# def proc_count(value, arr)
#     arr.count {|prc|prc.call(value)}
# end

def my_reject(arr, &blc)
    return arr.select {|ele|!blc.call(ele)}
end

def my_one?(arr, &blc)
    count = 0
    arr.each {|ele|count += 1 if blc.call(ele) == true}
    if count == 1
        return true
    end
    false
end

def hash_select(hash, &blc)
    new_hash = {}
    hash.each do |k,v|
        if blc.call(k,v) == true
            new_hash[k] = v
        end
    end
    new_hash
end

def xor_select(arr, prc1, prc2)
    return arr.select do |ele|
        (prc1.call(ele) || prc2.call(ele)) && !(prc1.call(ele) && prc2.call(ele))
    end
end

def proc_count(val, arr)
    count = 0
    arr.each {|prc|count += 1 if prc.call(val) == true}
    count
end