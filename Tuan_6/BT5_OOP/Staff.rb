class Canbo
  attr_accessor :name_242, :age_242, :gender_242, :address_242

  def initialize
  end 

  def enter_infomation
    print "Nhập tên : "
    @name_242 = gets.chomp
    print "Nhập tuổi : "
    @age_242 = gets.to_i
    print "Nhập giới tính: "
    @gender_242 = gets.to_i
    print "Nhập địa chỉ : "
    @address_242 = gets.chomp
  end

  def info    
    puts "Tên : #{@name_242}"
    puts "Tuối : #{@age_242}"
    if @gender_242 == 1 
        puts'Giới tính : Nam'
    elsif @gender_242 == 0
        puts 'Giới Tính : Nữ'
    else 
        puts 'Giới Tính : Khác'
    end
    puts "Địa chỉ : #{@address_242}"
  end
end 



class CongNhan < Canbo
  attr_accessor :name_242, :age_242, :gender_242, :address_242, :level_242

  def initialize
  end

  def enter_infomation
      super
      print "Nhập bậc : "
      @level_242 = gets.chomp
  end

  def info 
      super   
      puts "Bậc : #{@level_242}"
  end

end

class KySu < Canbo
  attr_accessor :name_242, :age_242, :gender_242, :address_242, :training_242

  def initialize
  end

  def enter_infomation
      super
      print "Nhập ngành đào tạo : "
      @training_242 = gets.chomp
  end

  def info 
      super   
      puts "Ngành : #{@training_242}"
  end
end

class NhanVien < Canbo
  attr_accessor :name_242, :age_242, :gender_242, :address_242, :work_242

  def initialize
  end

  def enter_infomation
      super
      print "Nhập công việc : "
      @work_242 = gets.chomp
  end

  def info 
      super   
      puts "Công việc : #{@work_242}"
  end

end

class QLCB
  def initialize
  end

  $canbos_242 = []
  
  def add
    puts"1. Nhâp công nhân :"
    puts"2. Nhâp Ky su :"
    puts"3. Nhập Nhân viên :"
    print "Mơi bạn chon : "
    choose_242 = gets.to_i
    if choose_242 ==1 
        canbo_242 = CongNhan.new
      
    elsif choose_242 == 2
        canbo_242 = KySu.new
    else 
        canbo_242 = NhanVien.new
    end
    canbo_242.enter_infomation
    $canbos_242 << canbo_242       
  end

  def information 
      puts "============ Thông tin ================"    
      $canbos_242.each do |canbo_242|
          puts canbo_242.info
      end
  end

end

$continue_242 = true
while $continue_242

  qlcb_242 = QLCB.new
  puts "1. Thêm mới cán bộ."
  puts "2. Tìm kiếm theo tên."
  puts "3. Hiện thị thông tin danh sách cán bộ."
  puts "4. Thoát khỏi chương trình."

  print "Chọn chức năng bất kỳ: "
  choose_242 = gets.to_i

  case choose_242
  when 1
      qlcb_242.add
  when 2
     puts "little child"
  when 3
      qlcb_242.information
  else
     puts "Exit !"
     $continue_242 = false
  end
end