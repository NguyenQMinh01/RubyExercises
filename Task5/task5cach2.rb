a = [5, 1, 22, 26, 6, -1, 8, 10]
b = [1, 6, -1, 10]

$y = 0 
a.each_with_index do |i, x|
    unless a[x] != b[$y]
        $y += 1
    end  
end


def check(arr1)
    p $y == arr1.length ? true : false  
end
check(b)