#2022/09/19 Nguyen Quang Minh
#BAI TAP 1
#Cach 1 dung if else long for:
print "Cach 1\n"
loop do                                   #vong lap do de bat loi khi nhap be hon 0 va lon hon 99
   print "nhap so luong tu 0 den 99: "
   num = gets.to_i
   if num < 0 || num > 99
       redo                               #redo quay lai tu dau khi bat loi
   else
       arr = Array.new()
       for i in (0...num)                 #thoa dieu kien thi else de thuc hien trong vong lap for
         element = gets.to_i
           break if element < 0
           arr.append(element)  
       end
       puts "Day so vua nhap la: #{arr} \nSo be nhat la: #{arr.min}"
       break
   end 
end


#Cach 2 dung 2 vong lap long nhau
def test_array
   print "Cach 2\n"
   array = Array.new()  
   loop do                              #vong lap loop de khi nhap sai gia tri se lap lai tu dau
      print "Nhap so luong phan tu tu 0 den 99: "
      number = gets.to_i                                 
      if number < 0 || number > 99
         redo                          #khi nhap sai dieu kien se dung redo de reset chay lai tu dau
      else
         i = 0             
         while i < number              
            element = gets.to_i        #nhap so phan tu tu ban phim
            break if element < 0       
            array.append(element)      #dung append de dua so luong lon phan tu vao mang
            i = i+1  
         end
         puts "mang xuat ra sau khi nhap la: #{array}"
         puts "gia tri nho nhat trong mang la: #{array.min}"
         break
      end
   end  
end

test_array        #goi ham thuc thi








