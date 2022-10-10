class Person
  attr_accessor :name_242, :age_242, :job_242, :passport_242

  def initialize()
      print "+ Nhap ten: "
      @name_242 = gets.chomp
      print "+ Nhap tuoi: "
      @age_242 = gets.to_i
      print "+ Nhap nghe nghiep: "
      @job_242 = gets.chomp
      print "+ Nhap cccd: "
      @passport_242 = gets.chomp
  end

  def toString
      return "Ho ten: #{@name_242}, Tuoi: #{@age_242}, Cong viec: #{@job_242}, Ho chieu: #{@passport_242}"
  end

end

class Family
  attr_accessor :persons_242, :address_242

  def initialize()
      print "_ Nhap so thanh vien trong gia dinh: "
      n = gets.to_i
      @persons_242 = []
      for i in 1..n
          puts "+ Nhap thanh vien thu #{i}:"
          person_242 = Person.new
          @persons_242 << person_242
      end
      print "+ Nhap dia chi: "
      @address_242 = gets.chomp
  end
  
  def toString
      str = " "
      i = 1
      @persons_242.each{ |person_242| 
          str += "Thanh vien #{i}{#{person_242.toString}}"
          i += 1
      }
      return str
  end
end

class Town
  attr_accessor :families_242
  def initialize()
      print "Nhap so ho gia dinh trong thanh pho: "
      n_242 = gets.to_i
      @families_242 = []
      for i in 1..n_242
          puts "Nhap gia dinh thu #{i}:"
          family_242 = Family.new
          @families_242 << family_242
      end
  end
  
  def toString
      str_242 = " "
      i_242 = 1
      @families_242.each{ |family_242| 
          str_242 += "Family #{i_242}{#{family_242.toString}}\n"
          i_242 += 1
      }
      return str_242
  end
end

town_242  = Town.new

puts "Hien thi danh sach gia dinh trong thanh pho:"
puts town_242.toString