target_sum = 0 
numbers = [12,3,1,2,-6,5,-8,6]

def bai7(numbers,target, array=[])
    sum = array.sum
    
    print "#{array}" if (sum == target && array.size == 3)
   
    (0..(numbers.length - 1)).each do |i|
      value = numbers[i]
      remaining = numbers.drop(i+1)
      bai7(remaining, target, array + [value])
      print array + [value]
    end
end


bai7(numbers,target_sum)
