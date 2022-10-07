class ThongTin
  @id_242
  @hangSX_242
  @namSX_242
  @dongXe_242
  @giaBan_242
  @bienSo_242
  @mauXe_242

  attr_accessor :id_242, :hangSX_242, :namSX_242, :dongXe_242, :giaBan_242, :bienSo_242, :mauXe_242

  def initialize(id_242, hangSX_242, namSX_242, dongXe_242, giaBan_242, bienSo_242, mauXe_242)
    @id_242     = id_242
    @hangSX_242 = hangSX_242
    @namSX_242  = namSX_242
    @dongXe_242 = dongXe_242
    @giaBan_242 = giaBan_242
    @bienSo_242 = bienSo_242
    @mauXe_242  = mauXe_242
  end 

  def infor
    puts "ID: #{@id_242}"
    puts "Hang SX: #{@hangSX_242}"
    puts "Nam SX: #{@namSX_242}"
    puts "Dong xe: #{@dongXe_242}"
    puts "Gia ban: #{@giaBan_242}"
    puts "Bien so: #{@bienSo_242}"
    puts "Mau Xe: #{@mauXe_242}"
  end 

end 