array  = [3, 5, -4, 8, 11, 1, -1, 6]
target_sum = 10
yarra = array.reverse

combine = array.product(yarra)

combine.map do |sub_array|
    next if sub_array[0] == sub_array[1]
    unless sub_array.sum != target_sum
       return puts "out put la: #{sub_array}"
    end
end
puts "#{[]}"