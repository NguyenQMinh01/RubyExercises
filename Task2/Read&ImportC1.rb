require 'csv'
require 'benchmark'
require 'active_record'
require 'activerecord-import'

#Time read and import file into database is ~ 1 - 2 seconds

ActiveRecord::Base.establish_connection(
      adapter: 'postgresql',
      host:   'localhost',
      username:   'postgres',
      password:   'minhlatoi28092001',
      database:    'postgres'
  )
  def calculation_time
    time = Benchmark.realtime do
        yield
    end
    puts "Time doc va import file vao database cach 2 = #{time.round(2)}"
  end

def read_and_import_file(filename)
    if File.exist?(filename)
        calculation_time do
            file_csv_dir = filename

            connection = ActiveRecord::Base.connection
            raw_connection = connection.raw_connection
            raw_connection.exec("COPY users ( name, email, address, phone, date_of_birth, profile) FROM STDIN WITH HEADER CSV")

            file = File.open(file_csv_dir, 'r')
            while !file.eof?
                raw_connection.put_copy_data(file.readline)
            end
            raw_connection.put_copy_end
        end
    else
        puts "Cannot find file: #{filename} "
    end
end

read_and_import_file("file.csv")


