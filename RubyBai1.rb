#2022/09/19 Nguyen Quang Minh
#BAI TAP 1
#Cach 1 dung if else long for:
print "Cach 1\n"
def input_output_array 
   loop do                                   #vong lap do de bat loi khi nhap be hon 0 va lon hon 99
      print "nhap so luong tu 0 den 99: "
      number = gets.chomp.to_i
      if (number.is_a? (String))              #kiem tra xem co phai so hay khong
         redo                               #redo quay lai tu dau khi bat loi
      elsif (number > 0 && number <= 99)
         array = Array.new()
         for i in (1..number)                 #thoa dieu kien thi else de thuc hien trong vong lap for
            element = gets.to_i
            break if element < 0
            array.append(element)  
         end
      else
         puts "nhap sai!"
         redo
      end  
      puts "Day so vua nhap la: #{array} \nSo be nhat la: #{array.min}"
      break
   end
end
input_output_array

      


#Cach 2 dung 2 vong lap long nhau
def input_output_array2
   print "Cach 2\n"
   array = Array.new()  
   loop do                              #vong lap loop de khi nhap sai gia tri se lap lai tu dau
      print "Nhap so luong phan tu tu 0 den 99: "
      number = gets.chomp.to_i                   
      if (number.is_a?(String))
         redo                          #khi nhap sai dieu kien se dung redo de reset chay lai tu dau
      elsif (number > 0 && number <= 99)
         i = 0             
         while i < number              
            element = gets.to_i        #nhap so phan tu tu ban phim
            break if element < 0       
            array.append(element)      #dung append de dua so luong lon phan tu vao mang
            i = i+1  
         end
      else
         print "nhap sai! \n"
         redo
      end
      puts "mang xuat ra sau khi nhap la: #{array}"
      puts "gia tri nho nhat trong mang la: #{array.min}"
         break
   end  
end


input_output_array2        #goi ham de thuc thi







