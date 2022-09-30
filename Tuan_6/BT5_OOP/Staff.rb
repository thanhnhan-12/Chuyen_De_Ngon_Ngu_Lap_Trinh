class Canbo
  attr_accessor :name_242, :age_242, :gender_242, :address_242

  def initialize

  end 

  def enter_infomation
    print "Nhập tên : "
    @name_242 = gets.chomp
    print "Nhập tuổi : "
    @age_242 = gets.to_i
    print "Nhập giới tính 1(nam) 0(nữ) 2(khác) : "
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
  attr_accessor :name_242, :age_242, :gender_242, :address_242, :bac

  def initialize
  end

  def enter_infomation
      super
      print "Nhập bậc : "
      @bac = gets.chomp
  end

  def info 
      super   
      puts "Bậc : #{@bac}"
  end

end

class KySu < Canbo
  attr_accessor :name_242, :age_242, :gender_242, :address_242, :nganh

  def initialize
  end

  def enter_infomation
      super
      print "Nhập ngành đào tạo : "
      @nganh = gets.chomp
  end

  def info 
      super   
      puts "Ngành : #{@nganh}"
  end
end

class NhanVien < Canbo
  attr_accessor :name_242, :age_242, :gender_242, :address_242, :congviec

  def initialize
  end

  def enter_infomation
      super
      print "Nhập công việc : "
      @congviec = gets.chomp
  end

  def info 
      super   
      puts "Công việc : #{@congviec}"
  end

end

class QLCB
  def initialize
  end

  $canbos = []
  
  def addCanbo
    puts"1. Nhâp công nhân :"
    puts"2. Nhâp Ky su :"
    puts"3. Nhập Nhân viên :"
    print "Mơi bạn chon : "
    choose = gets.to_i
    if choose ==1 
        canbo =CongNhan.new
      
    elsif choose == 2
        canbo =KySu.new
    else 
        canbo = NhanVien.new
    end
    canbo.enter_infomation
    $canbos << canbo       
  end

  def infomatinon 
      puts "============Danh sách cán bộ là================"    
      $canbos.each do |canbo|
          puts canbo.info
      end
  end

end

$continute = true
while $continute

  quanly = QLCB.new
  puts "1. thêm mới cán bộ."
  puts "2. Tìm kiếm theo tên."
  puts "3. Hiện thị thông tin danh sách cán bộ ."
  puts "4 Thoát khỏi chương trình."

  print "Mời bạn chọn : "
  choose = gets.to_i

  case choose
  when 1
      quanly.addCanbo
  when 2
     puts "little child"
  when 3
      quanly.infomatinon
  else
     puts "Xin tạm biệt!"
      $continute = false
  end
end