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

User = ActiveRecord::Base.connection

def ReadAndImportFile(filename)
  calculation_time do
  CSV.new(File.read(filename))
    File.open((filename), 'r') do |file|
      User.raw_connection.copy_data %{COPY users ( name, email, address, phone, date_of_birth, profile) FROM STDIN WITH HEADER CSV} do
        while line = file.gets do
          User.raw_connection.put_copy_data line
        end
      end
    end
  end
end


ReadAndImportFile("file.csv")
#Time read and import file into database is ~ 1 - 2 seconds


