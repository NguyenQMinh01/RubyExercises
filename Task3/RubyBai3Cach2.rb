MAX = 99
MIN = 0

begin
    print "nhap: "
    $number = Integer(gets.chomp,10)
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

count = 0
increasing_array = Array.new()
$array.each_with_index do |element, idx|
    increasing_array.push(element)
    unless (($array[idx+1]) && element < $array[idx+1])
    puts "\nMang tang #{ count += 1}: #{increasing_array}"
    increasing_array.clear
    end
end
