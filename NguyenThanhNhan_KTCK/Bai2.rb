puts "Nhap x: "

x_242 = gets.to_i()

puts "Nhap y: "

y_242 = gets.to_i()

# 

a_242 = (Math.sqrt(y_242) + Math.sqrt(x_242) ) / Math.sqrt(x_242 * y_242 * 1.0) 

b_242 = 2.0 /  (Math.sqrt(y_242) + Math.sqrt(x_242) )

c_242 = (y_242 + x_242) / (x_242 * y_242 * 1.0 )

if( x_242 > 0 && y_242 > 0 )
  p_242 = (a_242 * b_242) + c_242 
  puts "P =  #{p_242}"
end

