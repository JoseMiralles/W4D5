LIST = [2, 3, -6, 7, -6, 7]




def linearithmic(arr)
    subs = []

    arr.each_with_index do |ele1, idx1|
        arr[0..idx1].each_with_index do |ele2, idx2|
                subs << arr[idx2..idx1] #.slice(idx2..idx1)
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
# p liniarithmic(LIST)


#  [5, 3, -7]
#  [2, 3, -6, 7, -6, 7]
#  [-5, -1, -3]

def linear(arr)
    largest = arr.first
    current = arr.first

    i = 1
    while i < arr.length
        current = current += arr[i]
        if largest < current
            largest = current
        elsif current < 0 
            current = 0
        end
        if largest < arr[i]
            largest = arr[i]
        end    
        i += 1
    end
    p i
    largest
end

p linear([5, 3, -7])
p linear([2, 3, -6, 7, -6, 7])
p linear([-5, -1, -3])

rand = (-500000..500000).to_a.shuffle
p linear(rand)

