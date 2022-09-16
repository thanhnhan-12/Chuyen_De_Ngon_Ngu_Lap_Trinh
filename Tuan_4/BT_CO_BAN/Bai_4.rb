# Viết chương trình để nhập ba số nguyên đã biết, sau đó in ra màn hình theo thứ tự tăng dần và giảm dần.
arr_242 = []
print "Nhap so thu nhat: "
No1_242 = gets.to_i
arr_242.push(No1_242)

print "Nhap so thu hai: "
No2_242 = gets.to_i
arr_242.push(No2_242)

print "Nhap so thu ba: "
No3_242 = gets.to_i
arr_242.push(No3_242)

print "Mang tang dan : ", arr_242.sort

print "\nMang giam dan : ", arr_242.sort.reverse
