
def anagram?(str1, str2)
    perms = str1.split("").permutation
    perms.include?(str2.split(""))
end

# p anagram?("tyranosaurus", "auranustory")    #=> false
# p anagram?("elvis", "lives")    #=> true



def second_anagram?(str1, str2) #quadratic

    split = str2.split("") #O(n)
    str1.split("").each do |c| #O(n)    <
        split.delete(c) #O(n)           ^ O(n^2) when nested in above each block
    end

    split.empty?
end

p second_anagram?("cat", "car")
p second_anagram?("tyranosaurus", "auranustory")    #=> false
p second_anagram?("elvis", "lives")    #=> true