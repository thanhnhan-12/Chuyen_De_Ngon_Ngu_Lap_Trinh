require './Exercise_5/Room.rb'
require './Exercise_5/RoomA.rb'
require './Exercise_5/RoomB.rb'
require './Exercise_5/RoomC.rb'
require './Exercise_5/Person.rb'

class Hotel < Person
  def initialize
      @persons_242 = []
  end

  def addRoom(value)
      @persons_242.push(value)
  end

  def delete(cccd_242)
      for item_242 in @persons_242 do
          if(item_242.passport_242 == cccd_242)
              @persons_242.delete(item_242)
          end
      end
  end
     
  def caculator(cccd_242)
      for item_242 in @persons_242 do
          if(item_242.passport_242 == cccd_242)
             return item_242.price_242 * item_242.numberRent_242
          end
      end
  end

  def display
    @persons_242.each{ |item_242| print item_242.display}
  end

end

hotel_242 = Hotel.new
while true
    puts "---Cac chuc nang chinh---"
    puts "Chon 1: Them moi khach hang"
    puts "Chon 2: Hien thi thong tin khach hang "
    puts "Chon 3: Xoa khach hang theo CCCD"
    puts "Chon 4: Tinh tien cho khach theo CCCD"
    puts "Chon 5: Thoat khoi chuong trinh"
    print "Chon cong viec can thuc hien: "
    value  = gets.to_i
    case value
        when 1
            print "_ Nhap ten: "
            name_242 = gets.to_s
            print "_ Nhap tuoi: "
            age_242 = gets.to_i
            print "_ Nhap CCCD: "
            passport_242 = gets.to_s

            puts "Cac loai phong: "
            puts "Chon 1 : Loai A"
            puts "Chon 2 : Loai B"
            puts "Chon 3 : Loai C"

            puts"Chon loai phong: "
            loai_242 = gets.to_i

            case loai_242
                when 1
                    room_242 = RoomA.new
                when 2
                    room_242 = RoomB.new
                when 3
                    room_242 = RoomC.new
                else
                    puts "Khong co loai phong tuong ung "
            end
            puts "Nhap so ngay muon thue "
            number_day_242 = gets.to_i

            if room_242
                person_242 = Person.new(name_242, age_242, passport_242, number_day_242, room_242.type_242, room_242.price_242) 
                hotel_242.addRoom(person_242)
            end
            
        when 2
            hotel_242.display

        when 3
            print "+ Nhap CCCD cua khach muon xoa: "
            cccd_242 = gets.to_s
            hotel_242.delete(cccd_242)
            
        when 4
            print "+ Nhap CCCD cua khach muon tinh: "
            cccd_242 = gets.to_s
            result_242 = hotel_242.caculator(cccd_242)
            puts result_242

        when 5
            break
        else
            puts "Khong hop le"

    end
end