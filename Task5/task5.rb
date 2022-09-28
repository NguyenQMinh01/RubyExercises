#clean code one line case true
a = [5, 1, 22, 26, 6, -1, 8, 10]
b = [1, 6, -1, 10]
puts a.combination(b.length).include?(b) #==> true


#clean code one line case false
a = [ 5, 22, 26, 6, 1, -1, 10, 8]
b = [1, 6, -1, 10]
puts a.combination(b.length).include?(b) #==> false




#performance case true with method check 
a = [5, 22, 26, 1, 6, -1, 10, 8]
b = [1, 6, -1, 10]
def check(array, brray)
    puts array.combination(brray.length).include?(brray)
end
check(a,b)