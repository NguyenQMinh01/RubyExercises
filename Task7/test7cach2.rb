VALUE = 0
$count = 0
target_sum = 0 


numbers = [12,3,2,-6,5]

def bai7(numbers,target, array=[])
    sum = array.sum
    
    if (sum == target && array.size == 3)
      print "#{array}" 
      $count = 1 
    end
    

    (VALUE..(numbers.length - 1)).each do |i|
      value = numbers[i]
      remaining = numbers.drop(i+1)
      bai7(remaining, target, array + [value])
    end

end


bai7(numbers,target_sum)

def check
  if( $count == 1 )
    return 
  else
    print "[]"
  end
end
check()
