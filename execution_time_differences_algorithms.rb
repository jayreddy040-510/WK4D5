# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
def quadratic_my_min(arr)
    
    arr.each do |x|
        count = 0
        arr.each do |y|
            count += 1 if x <= y
        end
           return x if count == arr.length
    end

end

# p quadratic_my_min(list)

#Time complexity of this function should be O(n^2)




def linear_my_min(arr)

    arr.inject do |acc,ele| 
        if acc <= ele
             acc
        else
             ele
        end
    end

end

# p linear_my_min(list)  # =>  -5

#Time complexity of this function should be O(n)


def largest_contiguous_subsum(arr)
ret = []
arr.each_with_index do |x,i|
    arr.each_with_index do |y,j|
        if j >= i
            ret << arr[i..j]
        end
    end
end

final = ret.sort {|a,b| a.sum <=> b.sum}

return final.last.sum

end


#The time complexity of this solution should be O(n^2)

def linear_largest_contiguous_subsum(arr)

    largest_sum = 0
    current_sum = 0
    arr.each_with_index do |x,i|
        current_sum += arr[i]
        if current_sum > largest_sum
            largest_sum = current_sum
        else current_sum > 0 ? current_sum : current_sum = 0

        end
    end

    return largest_sum
    
    
end



list = [5, 3, -7]
p linear_largest_contiguous_subsum(list) # => 8

# possible sub-sums
[5]           # => 5
[5, 3]        # => 8 --> we want this one
[5, 3, -7]    # => 1
[3]           # => 3
[3, -7]       # => -4
[-7]          # => -7

list2 = [2, 3, -6, 7, -6, 7]
p linear_largest_contiguous_subsum(list2) # => 8 (from [7, -6, 7])

list3 = [-5, -1, -3]
p linear_largest_contiguous_subsum(list3) # => -1 (from [-1])

