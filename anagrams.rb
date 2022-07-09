def first_anagram?(str1, str2)

    anagrams = str1.split("").permutation.to_a

    anagrams.include?(str2.split(""))

    
end

# p first_anagram?("gizmo", "sally")    #=> false
# p first_anagram?("elvis", "lives")    #=> true


#The time complexity of this solution is O(n!) If you increase the size of the strings, runtime elongates to unmanageable spans of time very quickly

def second_anagram?(str1,str2)
    str2 = str2.split("")
    str1.split("").each_with_index do |x,i|
        if str2.index(x)
            str2.delete_at(str2.index(x))
        else 
            return false
        end
    end

    return true

end

# p second_anagram?("gizmo", "sally")    #=> false
# p second_anagram?("elvis", "lives")    #=> true


#first_anagram? is longer time complexity than #second_anagram? the 2nd is O(n)


def third_anagram?(str1,str2)
    str1 = str1.split("").sort
    str2 = str2.split("").sort
    str1 == str2
end

# p third_anagram?("gizmo", "sally")    #=> false
# p third_anagram?("elvis", "lives")    #=> true

#I believe this problem is also O(n) time complexity. You're iterating through each string and then checking if they're equivalent.

def fourth_anagram?(str1, str2)

    str1.split("").tally == str2.split("").tally
end

# p fourth_anagram?("gizmo", "sally")    #=> false
# p fourth_anagram?("elvis", "lives")    #=> true

#I believe this problem is ALSO O(n) time complexity, because although we are using hashmaps, I imagine the Array#tally method iterates through each element of an array to create the hash counters for each char.

def bonus_anagram?(str1,str2)

    str = str1+str2
   str.split("").tally.values.all? {|x| x == 2}
    
end

p bonus_anagram?("gizmo", "sally")    #=> false
p bonus_anagram?("elvis", "lives")    #=> true