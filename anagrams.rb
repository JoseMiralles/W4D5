
def anagram?(str1, str2)
    perms = str1.split("").permutation
    perms.include?(str2.split(""))
end

# p anagram?("tyranosaurus", "auranustory")    #=> false
# p anagram?("elvis", "lives")    #=> true



def second_anagram?(str1, str2)

    split = str2.split("")
    str1.split("").each do |c|
        split.delete(c)
    end

    split.empty?
end

p second_anagram?("cat", "car")
p second_anagram?("tyranosaurus", "auranustory")    #=> false
p second_anagram?("elvis", "lives")    #=> true