require './Exercise_8/Student.rb'
require './Exercise_8/Card.rb'

class Main 
  def initialize
      @cards_242 = []
  end

  def add(value_242)
      @cards_242.push(value_242)
  end

  def display
      @cards_242.each{|card_242| puts card_242.display}
  end

  def delete(iD_242)
    for item_242 in @cards_242 do
        if(item_242.id_242 == iD_242)
            @cards_242.delete(item_242)
        end
    end
  end

end

main_242 = Main.new

while true
    puts "---Cac chuc nang chinh---"
    puts "Chon 1: Them moi phieu muon"
    puts "Chon 2: Hien thi tat ca phieu muon "
    puts "Chon 3: Xoa phieu muon theo id"
    puts "Chon 4: Thoat chuong trinh"
    print "Chon cong viec can thuc hien: "
    value  = gets.to_i
    case value
      when 1
          card_242 = Card.new
          card_242.input
          main_242.add(card_242)

      when 2
          main_242.display

      when 3
          puts "+ Nhap id cua phieu muon muon xoa: "
          iD1_242 = gets.chomp
          main_242.delete(iD1_242)
          puts "----- Danh sach the muon sau khi xoa -----"
          main_242.display

      when 4
          break

      else
          puts "Khong hop le"
    end
end