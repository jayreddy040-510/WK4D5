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

arr = [0, 1, 5, 7]
p bad_two_sum?(arr, 6) # => should be true
p bad_two_sum?(arr, 10) # => should be false