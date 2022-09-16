array_242 = []
Sum_242 = 0
print "Nhap so phan tu: "
numbers_242 = gets
for i_242 in 1..numbers_242.to_i do 
    print "array" + "[#{i_242}]: "
    x_242 = gets
    array_242.push x_242
    # Sum_242 += array_242
end

# for i_242 in 1..numbers_242.to_i do 
#     Sum_242 = Sum_242 + x_242
# end

print "Gia tri lon nhat cua mang: " + array_242.max
print "Gia tri nho nhat cua mang: " + array_242.min
# print "Gia tri trung binh cua mang: #{Sum_242 / array_242.length} " 
