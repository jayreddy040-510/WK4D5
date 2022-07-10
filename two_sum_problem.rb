def bad_two_sum?(arr,target)
arr.each_with_index do |x,i|
    arr.each_with_index do |y,j|
        if i != j
            return true if x + y == target
        end
    end
end

return false

end

arr1 = [0, 1, 5, 7]
# p bad_two_sum?(arr, 6) # => should be true
# p bad_two_sum?(arr, 10) # => should be false

#This solution's time complexity is O(n^2)
def bsearch(arr,target)
return nil if arr.empty?
return nil if arr.length == 1 && arr.first != target

    # piv = arr.length/2

    #     if target == arr[piv]
    #         return piv
    #     elsif target < arr[piv]
    #         return bsearch(arr[0...piv], target)
    #     elsif target > arr[piv]
    #         return nil if bsearch(arr.drop(piv+1), target) == nil
    #         return bsearch(arr.drop(piv+1), target) + piv + 1
    #     end
    
    #     return nil
    
    arr.index(target)
end

def quick_sort(arr)
    return arr if arr.length < 2

    piv = arr[0]
    left = arr[1..-1].select {|x| x < piv}
    right = arr[1..-1].select {|x| x >= piv}

    return quick_sort(left) + [piv] + quick_sort(right)

end

# p quick_sort([4,3,2,7,6,5,8,3,1,5,8,12,2])


def okay_two_sum?(arr,target)
    arr = quick_sort(arr)
    arr.each_with_index do |x,i|
        if bsearch((arr[0...i] + arr[i+1..-1]), (target - x))
            return true
        else
            next
        end
    end

    return false

end

# p okay_two_sum?([1,2,-3,4,5,6,-8,7,4,5,12,3,-4,2,1,-6,5,13], 5)
# p okay_two_sum?(arr1, 6) # => should be true
# p okay_two_sum?(arr1, 10) # => should be false

def two_sum?(arr,target)
    hash = arr.tally
    hash.keys.each_with_index do |x,i|
        next if target - x == x && hash[x] == 1
        return true if hash[target-x]
    end

    return false
end

p two_sum?([1,2,-3,4,5,6,-8,7,4,5,12,3,-4,2,1,-6,5,13], 5)
p two_sum?(arr1, 6) # => should be true
p two_sum?(arr1, 10) # => should be false




