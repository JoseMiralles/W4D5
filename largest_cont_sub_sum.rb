LIST = [-5, -1, -3]


def liniarithmic(arr)
    subs = []

    arr.each_with_index do |ele1, idx1|
        subs << [ele1]
        arr[idx1..-1].each_with_index do |ele2, idx2|
            subs << arr[idx1..idx2]
        end
    end

    biggest = subs.first.sum
    subs[1..-1].each do |sub|
        if sub.sum > biggest
            biggest= sub.sum
        end
    end
    p subs
    biggest
    
end
p liniarithmic(LIST)


# def lcss(arr)
#     subs = []
    
#     i = 0
#     while i < arr.length
#         subs << arr[i..-1]
#         i += 1
#     end

#     sub_sum = subs[0].sum
#     subs[1..-1].each do |s|
#         if s.sum > sub_sum
#             sub_sum = s.sum
#         end
#     end
#     sub_sum
# end
