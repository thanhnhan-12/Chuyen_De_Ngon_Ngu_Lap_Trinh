require './KTGK/ThongTin.rb';

class XeTai < ThongTin
  @trongTai_242

  attr_accessor :trongTai_242

  def initialize(id_242, hangSX_242, namSX_242, dongXe_242, giaBan_242, bienSo_242, mauXe_242, trongTai_242)
    super(id_242, hangSX_242, namSX_242, dongXe_242, giaBan_242, bienSo_242, mauXe_242)
    @trongTai_242 = trongTai_242
  end 

  def infor
    super()
    puts "Trong tai: #{@trongTai_242}"
  end 

end 