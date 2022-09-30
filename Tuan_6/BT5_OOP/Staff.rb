class CanBo
  attr_accessor :name_242, :age_242, :gender_242, :address_242

  def initialize
  end

  def initialize(name_242, age_242, gender_242, address_242)
    @name_242 = name_242 
    @age_242 = age_242
    @gender_242 = gender_242
    @address_242 = address_242
  end

  def input
    print "Enter your name_242: "
    @name_242 = gets.chomp

    print "Enter your age_242: "
    @age_242 = gets.to_i

    print "Enter your gender_242: "
    @gender_242 = gets.to_i

    print "Enter your address_242: "  
    @address_242 = gets.chomp
  end

  def display
    puts "Name_242: #{@name_242} \nAge_242: #{@age_242} \nGender_242: #{@gender_242} \nAddress_242: #{@address_242} "  
  end

end

class CongNhan < CanBo
  attr_accessor :level_242

  def initialize
  end

  def input
    super
    print "Enter your level: "
    @level_242 = gets.chomp
  end

  def display
    super
    puts "Level: #{@level_242}"

end

class KySu < CanBo
  attr_accessor :training_242

  def initialize
  end

  def input
    super
    print "Enter your training: "
    @training_242 = gets.chomp
  end

  def display
    super
    puts "Training: #{@training_242}"
  end

end

class NhanVien < CanBo
  attr_accessor :work_242

  def initialize
  end

  def input
    super
    print "Enter your work_242: "
    @work_242 = gets.chomp
  end

  def display
    super
    puts "Work: #{@work_242}"
  end 

end 

class QLCB 
  $canbo_242 = []

  def initialize
  end

  def add
    puts"1. Nhâp công nhân :"
    puts"2. Nhâp Ky su :"
    puts"3. Nhập Nhân viên :"
    print "Mơi bạn chon : "
    choose = gets.to_i
    if choose ==1 
        canbo_242 = CongNhan.new
     
    elsif choose == 2
        canbo_242 = KySu.new
    else 
        canbo_242 = NhanVien.new
    end
    canbo_242.input 
    $canbos_242 << canbo_242        
  end

  def infomatinon 
    puts "============Danh sách cán bộ là================"    
    $canbos_242.each do |canbo_242|
        puts canbo_242.info
    end
  end

end 

$continute_242 = true
while $continute_242

    quanly_242 = QLCB.new
    puts "1. thêm mới cán bộ."
    puts "2. Tìm kiếm theo tên."
    puts "3. Hiện thị thông tin danh sách cán bộ ."
    puts "4 Thoát khỏi chương trình."

    print "Mời bạn chọn : "
    choose_242 = gets.to_i

    case choose_242
    when 1
        quanly_242.add
    when 2
       puts "little child"
    when 3
        quanly_242.infomatinon
    else
       puts "Xin tạm biệt!"
        $continute_242 = false
    end
end

end