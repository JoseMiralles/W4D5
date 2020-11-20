LIST = [5, 3, -7]


def linearithmic(arr)
    subs = []

    arr.each_with_index do |ele1, idx1|
        arr[0..idx1].each_with_index do |ele2, idx2|
            subs << arr[idx2..idx1]
        end
    end

    biggest = subs.first.sum
    subs[1..-1].each do |sub|
        if sub.sum > biggest
            biggest= sub.sum
        end
    end
    biggest
    
end
linearithmic(LIST)


def linear(arr)
    subs = []
    
    sum = arr.first
    i = 0
    while i < arr.length
        temp_sum = arr[i..-1].sum 
        sum = temp_sum if i < arr.length - 1 && sum < temp_sum
        temp_sum = arr[i]
        sum = temp_sum if sum < temp_sum
        temp_sum = arr[0..i].sum
        sum = temp_sum if i >= 1 &&  sum < temp_sum
        i += 1
    end
    sum
end
p linear(LIST)