LIST = [-5, -1, -3]

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
p lcss(LIST)