require './Exercise_7/Teacher.rb'

class ManagementTeacher < Teacher
  def initialize
    @teachers_242 = []
  end

  def add(teacher_242)
      @teachers_242.push(teacher_242)
  end

  def displayAll
      @teachers_242.each{|item_242| item_242.display}
  end

  def delete(iD_242)
      for item_242 in @teachers_242 do
          if(item_242.id_242 == iD_242)
              @teachers_242.delete(item_242)
          end
      end
  end

  def calculator(id_1)
      count_242 = 0
      @teachers_242.each do |item_242|
          if item_242.id_242 == id_1
              count_242 = item_242.salary_242 + item_242.bonus_242 - item_242.penalty_242
          end     
      end   
      return count_242
  end

end 

managementTeacher_242 = ManagementTeacher.new
while true
    puts "---Cac chuc nang chinh---"
    puts "Chon 1: Them moi giao vien"
    puts "Chon 2: Hien thi tat ca gia vien "
    puts "Chon 3: Xoa giao vien theo id"
    puts "Chon 4: Tinh luong nhan cua gia vien theo id"
    puts "Chon 5: Thoat chuong trinh"
    print "Chon cong viec can thuc hien: "
    value  = gets.to_i
    case value
      when 1
          teacher_242 = Teacher.new
          teacher_242.input
          managementTeacher_242.add(teacher_242)

      when 2
          managementTeacher_242.displayAll

      when 3
          puts "Nhap id cua gia vien muon xoa: "
          iD1 = gets.to_i
          managementTeacher_242.delete(iD1)
          puts "Danh sach GV sau khi xoa:"
          managementTeacher_242.displayAll

      when 4
          puts "Nhap iD cua gia vien can tinh luong: "
          iD2 = gets.to_i
          puts managementTeacher_242.calculator(iD2)

      when 5
        break

      else
        puts "Khong hop le"
    end
end