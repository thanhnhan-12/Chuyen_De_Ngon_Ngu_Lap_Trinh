class A
  attr_accessor :tu1_242, :mau1_242, :tu2_242, :mau2_242

  def initialize
  end 

  def initialize(tu1_242, mau1_242, tu2_242, mau2_242)
    @tu1_242 = tu1_242
    @mau1_242 = mau1_242
    @tu2_242 = tu2_242 
    @mau2_242 = mau2_242 
  end 

  def input
    print "_ Nhap tu mot: "
    @tu1_242 = gets.to_i
    print "_ Nhap mau mot: "
    @mau1_242 = gets.to_i
    print "_ Nhap tu hai: "
    @tu2_242 = gets.to_i
    print "_ Nhap mau hai: "
    @mau2_242 = gets.to_i 
  end 

  # tu1_242, mau1_242, tu2_242, mau2_242

  def Sum()
    puts "Tong hai phan so la: #{(@tu1_242 * @mau2_242 ) + (@tu2_242 * @mau1_242)} / #{(@mau1_242 * @mau2_242)} "
  end 

  def Subtract()
    puts "Hieu hai phan so la: #{(@tu1_242 * @mau2_242 ) - (@tu2_242 * @mau1_242)} / #{(@mau1_242 * @mau2_242)} "
  end 

  def Multiply()
    puts "Tich hai phan so la:  #{(@tu1_242 * @tu2_242 )} / #{(@mau1_242 * @mau2_242 )}"
  end 

  def Divide()
    puts "Thuong hai phan so la:  #{(@tu1_242 * @mau2_242 )} / #{(@mau1_242 * @tu2_242 )}"
  end 
  
end 

class B < A
  def initialize(tu1_242, mau1_242, tu2_242, mau2_242)
    super(tu1_242, mau1_242, tu2_242, mau2_242)
  end

  def initialize
  end

  def input
    super
  end

  def Sum()
    if @mau1_242 == 0 || @mau2_242 == 0
      puts "Vo nghiem!"
    else
      super
    end
  end 

  def Subtract()
    if @mau1_242 == 0 || @mau2_242 == 0
      puts "Vo nghiem!"
    else
      super
    end

  end 

  def Multiply()
    if @mau1_242 == 0 || @mau2_242 == 0
      puts "Vo nghiem!"
    else 
      super 
    end

  end 

  def Divide()
    if @mau1_242 == 0 || @tu2_242 == 0
      puts "Vo nghiem!"
    else 
      super
    end
  end 

end 

pt_242 = B.new()
pt_242.input

while true

  puts "1. Tong hai phan so"
  puts "2. Hieu hai phan so"
  puts "3. Tich hai phan so"
  puts "4. Thuong hai phan so"
  puts "5. Thoat! "

  chon_242 = gets.to_i
  case chon_242
    when 1
      
      pt_242.Sum()
    
    when 2
      
      pt_242.Subtract()

    when 3
      
      pt_242.Multiply()

    when 4
      
      pt_242.Divide()
    
    when 5
      break
    
    else  
      puts "Khong hop le! "

  end


end 