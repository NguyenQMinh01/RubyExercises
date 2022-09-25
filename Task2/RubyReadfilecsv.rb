require 'csv'
require 'benchmark'
require 'active_record'
require 'activerecord-import'

def calculation_time
  time = Benchmark.realtime do
      yield
  end
  puts "Time tao file = #{time.round(2)}"
end

ActiveRecord::Base.establish_connection(
    adapter: 'postgresql',
    host:   'localhost',
    username:   'postgres',
    password:   'minhlatoi28092001',
    database:    'postgres'
)
class User < ActiveRecord::Base
  validates :email, uniqueness: true
end

User.connection.execute <<-SQL
  CREATE TEMP TABLE users_imports
  (
    name text,
    email text,
    phone text,
    address text,
    date_of_birth text,
    profile text
  )
SQL

File.open(('file.csv'), 'r') do |file|
  User.connection.raw_connection.copy_data %{copy users_imports from stdin with csv delimiter ',' quote '"'} do
    while line = file.gets do
      User.connection.raw_connection.put_copy_data line
    end
  end
end

calculation_time do
User.connection.execute <<-SQL
  insert into users(name, email, phone, address, date_of_birth, profile)
  select name, email, phone, address, date_of_birth, profile
  from users_imports
SQL
end



#newusers = users.insert do |attrs|
#    User.new(attrs.to_h)
#end
#time = Benchmark.realtime {User.import(newusers)}
#puts "time import data into #{time.round(2)}"




