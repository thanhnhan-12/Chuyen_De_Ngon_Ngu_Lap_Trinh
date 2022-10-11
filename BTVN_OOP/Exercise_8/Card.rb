require './Exercise_8/Student.rb'

class Card < Student
  attr_reader :id_242, :borrowDate_242, :paymentDate_242, :bookId_242

  def input
    print "_ Nhap ma the muon: "
    @id_242 = gets.chomp
    print "_ Nhap ngay muon: "
    @borrowDate_242 = gets.chomp
    print "_ Nhap ngay tra: "
    @paymentDate_242 = gets.chomp
    print "_ Nhap so hieu sach: "
    @bookId_242 = gets.chomp
    super
  end

  def display
    puts "=> Ma the: #{@id_242}"
    puts "=> Ngay muon sach: #{@borrowDate_242}"
    puts "=> Ngay tra sach: #{@paymentDate_242}"
    puts "=> So hieu  sach: #{@bookId_242}"
    super
  end

end 