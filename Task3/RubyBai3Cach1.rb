MAX = 99
MIN = 0

begin
    print "nhap: "
    $number = Integer(gets.chomp)
    if ($number > MIN && $number <= MAX)
        $array = Array.new($number) { rand(1..9) }
        print "mang vua nhap la #{$array}"
    else
        raise 
    end
    rescue
        print "nhap sai vui long nhap lai! "
        retry
end

increasing_array = [$array[0]]
number_array = 0
for i in 1...$array.size
    if $array[i] > $array[i-1]
        increasing_array.push($a[i])
    else
        puts "\nmang tang #{number_array}: #{increasing_array.to_s}"
        increasing_array.clear
        increasing_array.push($array[i])
        number_array += 1
    end
end
puts "\nmang tang #{number_array} la #{increasing_array}"


