#clean code one line case true
a = [ 5, 22, 26, 1, 6, -1, 10, 8]
b = [1, 6, -1, 10]
puts a.each_cons(b.length).include?(b) #==> true


#clean code one line case true
a = [ 5, 22, 26, 6, 1, -1, 10, 8]
b = [1, 6, -1, 10]
puts a.each_cons(b.length).include?(b) #==> false




#performance case true with method check 
a = [5, 22, 26, 1, 6, -1, 10, 8]
b = [1, 6, -1, 10]
def check(array, brray)
    puts array.each_cons(brray.length).include?(brray)
end
check(a,b)