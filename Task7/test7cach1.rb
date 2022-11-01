def findTriplets(array, numbers, target_sum)
 
    arraysort =  array.sort()
 
    for i in (0..numbers - 1)
        
        left = i + 1
        right = numbers - 1
        x = arraysort[i]
        while (left < right) 
            if (x + arraysort[left] + arraysort[right] == target_sum) 
                
               
                print "[#{x} #{arraysort[left]} #{arraysort[right]}]"
                left = left + 1
                right = right - 1
             
        
            elsif (x + arraysort[left] + arraysort[right] < target_sum)
                left = left + 1
 
            else
                right = right - 1
            end
        end
    end
end
# Driver code
array = [12, 3, 1, 2, -6, 5, -8, 6]
target_sum = 0
numbers = array.size
findTriplets(array, numbers, target_sum)
