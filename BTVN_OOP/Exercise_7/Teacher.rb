class Teacher
  attr_accessor :salary_242, :bonus_242, :penalty_242, :realSalary_242, :name_242, :age_242, :hometown_242, :id_242

  def initialize
      @id_242 = id_242
      @name_242 = name_242
      @age_242 = age_242
      @salary_242 = salary_242
      @bonus_242 = bonus_242
      @penalty_242 = penalty_242
      @realSalary_242 = realSalary_242
      @hometown_242 = hometown_242
  end

  def input 
    print "_ Nhap id: "
    @id_242 = gets.to_i
    print "_ Nhap ten: "
    @name_242 = gets.chomp
    print "_ Nhap tuoi: "
    @age_242 = gets.to_i
    print "_ Nhap luong cung: "
    @salary_242 = gets.to_f
    print "_ Nhap luong thuong: "
    @bonus_242 = gets.to_f
    print "_ Nhap tien phat: "
    @penalty_242 = gets.to_f
    print "_ Nhap que quan: "
    @hometown_242 = gets.chomp
  end

  def display
    puts "=> ID: #{@id_242}"
    puts "=> Ten: #{@name_242}"
    puts "=> Tuoi: #{@age_242}"
    puts "=> Dia chi: #{@hometown_242}"
    puts "=> Luong: #{@salary_242}"
    puts "=> Thuong: #{@bonus_242}"
    puts "=> Phat: #{@penalty_242}"
  end

end
