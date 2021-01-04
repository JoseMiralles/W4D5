

def bad_two_sum?(arr, target_sum) # O(n^2) quadratic time
    arr.length.times do |i|
        (arr.length - i - 1).times do |j|
            return true if arr[i] + arr[j + i+ 1] == target_sum
        end
   end
   false
end

# arr = [0, 1, 5, 7]
# p bad_two_sum?(arr, 6) # => should be true
# p bad_two_sum?(arr, 10) # => should be false

def ok_two_sum(arr, target_sum)
    arr = arr.sort
    i, j = 0, arr.length - 1

    while i < j
        case (arr[i] + arr[j]) <=> target_sum
        when 0 
            return true
        when -1
            i += 1
        when 1
            j -= 1
        end
    end
    false
end

# arr = [1, 0, 9, 10, 5, 8, 7, 2]
# p ok_two_sum(arr, 18) # => should be true
# p ok_two_sum(arr, 45) # => should be false

def good_two_sum?(arr, target_sum)
    elements = {}

    arr.each do |ele|
        return true if elements[target_sum - ele]
        elements[ele] = true
    end
    false
end

arr = [1, 0, 9, 10, 5, 8, 7, 2]
p good_two_sum?(arr, 18) # => should be true
p good_two_sum?(arr, 45) # => should be false