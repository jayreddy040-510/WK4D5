list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
def quadratic_my_min(arr)
    
    arr.each do |x|
        count = 0
        arr.each do |y|
            count += 1 if x <= y
        end
           return x if count == arr.length
    end

end

p quadratic_my_min(list)






def linear_my_min(arr)

    arr.inject do |acc,ele| 
        if acc <= ele
             acc
        else
             ele
        end
    end

end

p linear_my_min(list)  # =>  -5

#Time complexity of this function should be O(n)