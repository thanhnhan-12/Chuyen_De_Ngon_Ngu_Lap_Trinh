require './Exercise_5/Room.rb'

class Person < Room
  attr_accessor :name_242, :age_242, :passport_242, :numberRent_242

  def initialize(name_242, age_242, passport_242, numberRent_242, type_242, price_242 )
      @name_242 = name_242
      @age_242 = age_242
      @passport_242 =passport_242
      @numberRent_242 = numberRent_242
      @type_242 = type_242
      @price_242 = price_242
  end

  def input
    print "_ Nhap ten: "
    @name_242 = gets.to_s
    print "_ Nhap tuoi: "
    @age_242 = gets.to_i
    print "_ Nhap CCCD: "
    @passport_242 = gets.to_s
  end

  def display
    puts "---------------------------------------------"
    puts "=> Ten khach hang: #{@name_242}"
    puts "=> Tuoi khach hang: #{@age_242}"
    puts "=> CCCD khach hang: #{@passport_242}"
    puts "=> Loai phong: #{@type_242}"
    puts "=> Gia xu: #{@price_242}"
    puts "=> So ngay muon thue: #{@numberRent_242}"
  end
end