require 'csv'
require 'benchmark'

SIZE_IN_CSV = 500000

LastName = ['Minh', 'Ha', 'Vinh', 'Thu', 'Hung', 'Hieu', 'Huy', 'Dat', 'Vu', 'Anh', 'Linh', 'Hoang', 'Duc', 'Tran', 'Suong', 'Ly', 'Phong', 'Nhi']
$column = ["name", "email", "phone", "address", "date_of_birth", "profile"] 
Item = LastName[rand(LastName.length)]

#A = (0...1).map { ('A'..'Z').to_a[rand(26)] }

def calculation_time
    time = Benchmark.realtime do
        yield
    end
    puts "Time tao file csv = #{time.round(2)}"
end


def create_file(filename)
    name = "Nguyen Van " + (Item)
    email = "nguyenvana1@gmail.com"
    phone = "0123456789"
    address = "Ho Chi Minh city"
    date_of_birth = "2000/01/01"
    profile = '"Like TV 100", "Some special charactor: \ / \' $ ~ & @ # ( ; "'
calculation_time do 
    CSV.open(filename,"w+") do |csv|
        csv << $column
        SIZE_IN_CSV.times do |i|
            csv << [name, email, phone, address, date_of_birth, profile]
        end
      end
    end
end

create_file("file.csv")
