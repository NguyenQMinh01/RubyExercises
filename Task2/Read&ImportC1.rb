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

def ReadAndImportFile(filename)
    file_csv_dir = filename

    connection = ActiveRecord::Base.connection
    rc = connection.raw_connection
    rc.exec("COPY users ( name, email, address, phone, date_of_birth, profile) FROM STDIN WITH HEADER CSV")

    file = File.open(file_csv_dir, 'r')
    while !file.eof?
        rc.put_copy_data(file.readline)
    end
    rc.put_copy_end
end


def calculation_time
    time = Benchmark.realtime {ReadAndImportFile('file.csv')}
    puts "time doc va import vao database cach 1 = #{time.round(2)}"
end

calculation_time