class Student
  attr_reader :name_242, :age_242, :class_242

  def initialize
  end

  def input 
      print "_ Nhap ten sinh vien: "
      @name_242 = gets.chomp
      print "_ Nhap tuoi sinh vien: "
      @age_242 = gets.to_i
      print "_ Nhap lop sinh vien: "
      @class_242 = gets.chomp
  end

  def display
      puts "=> Ten sinh vien: #{@name_242}"
      puts "=> Tuoi sinh vien: #{@age_242}"
      puts "=> Lop sinh vien: #{@class_242}"
  end

end 