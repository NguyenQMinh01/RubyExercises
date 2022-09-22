#2022/09/19 Nguyen Quang Minh
#BAI TAP 1
#Cach 1 dung if else long for:
#su dung 
print "Cach 1\n"
def input_output_array 
    begin                                   #vong lap do de bat loi khi nhap be hon 0 va lon hon 99
      print "nhap so luong tu 0 den 99: "
      number = Integer(gets.chomp,10)
      if number > 0 && number <= 99
        array = Array.new()
         for i in (1..number)
           begin
                print "nhap so: "                 #thoa dieu kien thi else de thuc hien trong vong lap for
                element = Integer(gets.chomp,10)
                break if element == -1
                if (element < -1)
                    raise 
                else
                    array.append(element)
                end
           rescue
                print "nhap sai vui long nhap lai! \n"
                retry  
           end  
         end
       puts "Day so vua nhap la: #{array} \nSo be nhat la: #{array.min}"
      end
    rescue
      print "nhap sai vui long nhap lai!\n "
      retry
    end
end
input_output_array

      






#dung while de lap
print "Cach 2\n"
def input_output_array 
    begin                                   
      print "nhap so luong tu 0 den 99: "
      number = Integer(gets.chomp,10)
      if number > 0 && number <= 99
        array = Array.new()
           begin
            i = 0             
            while i < number
               begin
                  print "nhap so: "               
                  element = Integer(gets.chomp,10)        #nhap so phan tu tu ban phim
                  break if element == -1
                  if (element < -1)
                     raise 
                  else
                     array.append(element)    #dung append de dua so luong lon phan tu vao mang
                  end          
                  i = i+1  
               end
            end
           rescue
                print "nhap sai vui long nhap lai! \n"
                retry  
           end
    end
         puts "Day so vua nhap la: #{array} \nSo be nhat la: #{array.min}"
    rescue
        print "nhap sai vui long nhap lai!\n "
        retry
    end
end

input_output_array








