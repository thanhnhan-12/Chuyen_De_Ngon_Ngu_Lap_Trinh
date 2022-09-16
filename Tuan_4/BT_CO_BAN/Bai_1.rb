array = []
print "Nhap so phan tu: "
number = gets
for i in 1..number.to_i do 
    print "array" + "[#{i}]: "
    x = gets
    array.push x
end
print "Gia tri lon nhat cua mang: " + array.max
print "Gia tri nho nhat cua mang: " + array.min
