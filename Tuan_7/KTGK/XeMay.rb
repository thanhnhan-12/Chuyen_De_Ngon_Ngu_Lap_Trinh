require './KTGK/ThongTin.rb';

class XeMay < ThongTin
  @congXuat_242
  @dungTich_242

  attr_accessor :congXuat_242, :dungTich_242

  def initialize(id_242, hangSX_242, namSX_242, dongXe_242, giaBan_242, bienSo_242, mauXe_242, congXuat_242, dungTich_242)
    super(id_242, hangSX_242, namSX_242, dongXe_242, giaBan_242, bienSo_242, mauXe_242)
    @congXuat_242 = congXuat_242
    @dungTich_242 = dungTich_242
  end

  def infor
    super()
    puts "Cong xuat: #{@congXuat_242}"
    puts "Dung tich: #{@dungTich_242}"
  end 

end 