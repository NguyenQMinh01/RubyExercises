array = [3, 5, -4, 8, 11, 1, -1, 6]

target_sum = 10

array.combination(2).select do |c| 
    unless c.sum != target_sum
        print "out put la: #{c}"
    end
end
