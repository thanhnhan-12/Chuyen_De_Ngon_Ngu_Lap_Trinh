class CanBo
  attr_accessor :name, :age, :gender, :address

  def initialize(name, age, gender, address)
    @name = name 
    @age = age
    @gender = gender
    @address = address
  end

  def initialize()

  end

  def input
    print "Enter your name: "
    name = gets

    print "Enter your age: "
    age = gets.to_i

    print "Enter your gender: "
    gender = gets.upcase

    print "Enter your address: "  
    address = gets
  end

  def display
    puts "Name: #{name} \nAge: #{age} \nGender: #{gender} \nAddress: #{address} "  
  end

end

class CongNhan < CanBo
  attr_accessor :level

  def initialize(name, age, gnder, address, level)
    super(name, age, gnder, address)
    @level = level
  end

  def initialize()

  end

  def input
    super
    print "Enter your level: "
    level = gets.to_i
  end

  def display
    super
    puts "Level: #{level}"

end

class KySu < CanBo
  attr_accessor :training

  def initialize(name, age, gender, address, training)
    super(name, age, gender, address)
    @training = training
  end

  def initialize()

  end

  def input
    super
    print "Enter your training: "
    training = gets
  end

  def display
    super
    puts "Training: #{training}"
  end

end

class NhanVien < CanBo
  attr_accessor :work

  def initialize(name, age, gender, address, work)
    super(name, age, gender, address)
    @work = work
  end

  def initialize()

  end

  def input
    super
    print "Enter your work: "
    work = gets
  end

  def display
    super
    puts "Work: #{work}"
  end 

end 

class QLCB 
  Canbo = []

  def add
    number
      puts "===== Chon ====="
      puts "1. Them moi can bo: "
      puts "2. Tim kiem theo ho ten: "
      puts "3. Hien thi danh sach: "
      puts "4. Thoat chuong trinh: "
      number = gets.to_i
      site = number
      case site 
      when 1 
        cn = CongNhan.new()
        # cn.input
        Canbo.push(cn.input)
      when 2
        ks = KySu.new()
        # ks.input
        Canbo.push(ks.input)
      when 3
        nv = NhanVien.new()
        # nv.input
        Canbo.push(nv.input)
      when 4
        puts "Thoat"
      else
        puts "Khong hop  le !"
      end
      
  end

  def menu
    numbers 
      # puts "1. Them moi can bo: "
      # puts "2. Tim kiem theo ho ten: "
      # puts "3. Hien thi danh sach: "
      # puts "4. Thoat chuong trinh: "
      numbers = gets.to_i
      site = numbers
      case site 
      when 1 
        
      when 2
        break
      when 3
        break
      when 4
        break
      else
        puts "Khong hop le !"
      end
      

  end


end 