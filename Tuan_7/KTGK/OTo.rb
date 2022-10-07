require './KTGK/ThongTin.rb';

class OTo < ThongTin 
  @soChoNgoi_242
  @kieuDongCo_242
  @nhienLieu_242
  @soTuiKhi_242
  @ngayDangKiem_242

  attr_accessor :soChoNgoi_242, :kieuDongCo_242, :nhienLieu_242, :soTuiKhi_242, :ngayDangKiem_242

  def initialize(id_242, hangSX_242, namSX_242, dongXe_242, giaBan_242, bienSo_242, mauXe_242, soChoNgoi_242, kieuDongCo_242, nhienLieu_242, soTuiKhi_242 ,ngayDangKiem_242)
    super(id_242, hangSX_242, namSX_242, dongXe_242, giaBan_242, bienSo_242, mauXe_242)
    @soChoNgoi_242 = soChoNgoi_242
    @kieuDongCo_242 = kieuDongCo_242
    @nhienLieu_242 = nhienLieu_242
    @soTuiKhi_242 = soTuiKhi_242
    @ngayDangKiem_242 = ngayDangKiem_242
  end 

  def infor
    super()
    puts "So cho ngoi: #{@soChoNgoi_242}"
    puts "Kieu dong co: #{@kieuDongCo_242}"
    puts "Nhien lieu: #{@nhienLieu_242}"
    puts "So tui khi: #{@soTuiKhi_242}"
    puts "Ngay dang kiem: #{@ngayDangKiem_242}"
  end 

end 