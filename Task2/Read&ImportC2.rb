require 'csv'
require 'benchmark'
require 'active_record'
require 'activerecord-import'

def calculation_time
  time = Benchmark.realtime do
      yield
  end
  puts "Time doc va import file vao database cach 2 = #{time.round(2)}"
end

ActiveRecord::Base.establish_connection(
    adapter: 'postgresql',
    host:   'localhost',
    username:   'postgres',
    password:   'minhlatoi28092001',
    database:    'postgres'
)

class User < ActiveRecord::Base
end

def ReadAndImportFile(filename)
  calculation_time do
  CSV.new(File.read(filename))
    File.open((filename), 'r') do |file|
      User.connection.raw_connection.copy_data %{copy users from stdin with csv delimiter ',' quote '"'} do
        while line = file.gets do
          User.connection.raw_connection.put_copy_data line
        end
      end
    end
  end
end

ReadAndImportFile("file.csv")



