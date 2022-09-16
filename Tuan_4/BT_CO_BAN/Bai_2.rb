# Nhập 3 cạnh tam giác, kiểm tra điều kiện có phải 3 cạnh tam giác hay ko? nếu đúng --> tính chu vi, diên tích --> in ra
print "Nhap canh AB: "
AB_242 = gets.to_i
print "Nhap canh BC: "
BC_242 = gets.to_i
print "Nhap canh AC: "
AC_242 = gets.to_i
  if AB_242 + BC_242 > AC_242 && AB_242 + AC_242 > BC_242 && BC_242 + AC_242 > AB_242 
    print "Day la tam giac " 
    print "\nChu vi: ", Perimeter_242 = (AB_242 + BC_242 + AC_242) / 2.0
    print "\nDien tich: ", Area_242 = Math.sqrt(Perimeter_242 * (Perimeter_242 - AB_242) * (Perimeter_242 - AC_242) * (Perimeter_242 - BC_242)).to_f
  else
    puts "Khong phai tam giac! "
end
