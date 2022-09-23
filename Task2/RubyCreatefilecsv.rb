require 'csv'
require 'benchmark'
require 'active_record'
require 'activerecord-import'

ActiveRecord::Base.establish_connection(
    adapter: 'postgresql',
    host:   'localhost',
    username:   'postgres',
    password:   'minhlatoi28092001',
    database:    'postgres'
)


class User < ActiveRecord::Base
end

#User.import([{id: '1', name: 'John'}],validate: false)



$column = ["name", "email", "phone", "address", "date_of_birth", "profile"] 


def calculation_time
    time = Benchmark.realtime do
        yield
    end
    puts "Time tao file = #{time.round(2)}"
end

def create_file
    name = "Nguyen Van A "
    email = "nguyenvana1@gmail.com"
    phone = "0123456789"
    address = "Ho Chi Minh city"
    date_of_birth = "2000/01/01"
    profile = '"Like TV 100", "Some special charactor: \ / \' $ ~ & @ # ( ; "'
calculation_time do 
    CSV.open("file.csv","w+") do |csv|
        csv << $column
        500000.times do |i|
            csv << [name ,email.sub("1","#{i}"),phone,address,date_of_birth,profile]
        end
      end
    end
end
create_file

#users = CSV.new(File.read("file.csv"), headers: true).map(&:to_h)
#time  = Benchmark.realtime {User.import(users)}

#users = []
#CSV.foreach("file.csv", headers: true) do |row|
#    users << row
#end
#newusers = users.map do |attrs|
#    User.new(attrs)
#end
#time = Benchmark.realtime {User.import(newusers)}
#puts "time import data into #{time.round(2)}"
