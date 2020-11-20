LIST = [ 0, 3, 5, 4, -5, 10, 1, 90 ]

# O(n^2)
def quadratic(arr)

    arr.each do |el1|
        return el1 if arr.all? { |el2| el1 < el2 || el1 == el2 }
    end

end
p quadratic(LIST)

# O(n)
def linear(arr)
    lowest = arr.first
    arr[1..-1].each do |el|
        if el < lowest
            lowest = el
        end
    end
    lowest
end
p linear(LIST)