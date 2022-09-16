# Nhập các số vào mảng, in ra số lớn nhất, nhỏ nhất, giá trị trung bình của mảng.
arr_242 = [];
avg_242 = 0;
print "Nhap so phan tu cua mang: ";
numbers_242 = gets.to_i;
for i in 0..numbers_242 -1
    print "Array[#{i + 1}] : ";
    value_242 = gets.to_i;
    avg_242 += value_242;
    arr_242.push(value_242);
end

avg_242 = avg_242/arr_242.length;

puts "So lon nhat: #{arr_242.max}";
puts "So nho nhat: #{arr_242.min}";
puts "Gia tri trung binh: #{avg_242}";