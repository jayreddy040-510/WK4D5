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

p second_anagram?("gizmo", "sally")    #=> false
p second_anagram?("elvis", "lives")    #=> true


#first_anagram? is longer time complexity than #second_anagram? the 2nd is O(n)