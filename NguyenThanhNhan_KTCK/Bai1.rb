sum_242 = 0

puts "Nhap n: "

n_242 = gets.to_i()

for i_242 in 0..n_242 do
  if(i_242 % 2 != 0)
    sum_242 += i_242;
  end
end 

puts "Tong tat ca cac so le: #{sum_242}"

