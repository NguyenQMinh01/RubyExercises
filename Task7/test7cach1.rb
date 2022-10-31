def findTriplets(array, numbers, target_sum)
 
    arraysort =  array.sort()
 
    for i in (0..numbers - 1)
        
        l = i + 1
        r = numbers - 1
        x = arraysort[i]
        while (l < r) 
            if (x + arraysort[l] + arraysort[r] == target_sum) 
                
               
                print "[#{x} #{arraysort[l]} #{arraysort[r]}]"
                l = l + 1
                r = r - 1
             
        
            elsif (x + arraysort[l] + arraysort[r] < target_sum)
                l = l + 1
 
            else
                r = r - 1
            end
        end
    end
end
# Driver code
array = [12, 3, 1, 2, -6, 5, -8, 6]
target_sum = 0
numbers = array.size
findTriplets(array, numbers, target_sum)
