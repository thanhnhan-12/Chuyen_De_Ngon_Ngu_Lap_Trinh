require './KTGK/ThongTin.rb';
require './KTGK/OTo.rb';
require './KTGK/XeMay.rb';
require './KTGK/XeTai.rb';

class QLPTGT
  arr_242 = []

  $phuongtien242 = []

  def xoaPhuongTien
    puts "Nhap ID phuong tien can xoa: "
    maID242 = gets.chomp
    $phuongtien242.delete_if {|pt242| pt242.id_242 == maID242}
    puts "=== Danh sach phuong tien sau khi xoa ==="    
    $phuongtien242.each do |pt242|
        puts pt242.infor
    end
  end

  def timKiemTheoMau(searchInput)
    puts("--Show list results -- ")
    $phuongtien242.each do |car|
        if car.mauXe_242.include? searchInput
          car.infor                
        end
    end
  end
  

  while true
    ql_242 = QLPTGT.new
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~";
    puts "Nhập 1 : Thêm phương tiện và hiển thị danh sách. "
    puts "Nhập 2 : Xóa một phương tiện. "
    puts "Nhập 3 : Tìm phương tiện theo hãng sản xuất, màu, biển số. "
    puts "Nhập 4 : Thoát. "

    chucNang_242 = gets.to_i;
    case chucNang_242
    when 1
      print "Nhap ID: ";
      id_242 = gets.to_i;
      print "Nhap hang sx: "
      hangSX_242 = gets;
      print "Nhap nam sx: ";
      namSX_242 = gets.to_i;
      print "Nhap dong xe: ";
      dongXe_242 = gets;
      print "Nhap gia ban: ";
      giaBan_242 = gets.to_i;
      print "Nhap bien so: ";
      bienSo_242 = gets;
      print "Nhap mau xe: ";
      mauXe_242 = gets;

      puts "Nhap a: Oto ";
      puts "Nhap b: Xe may ";
      puts "Nhap c: Xe tai ";
      chon_242 = gets.chomp;
      case chon_242

      when 'a'
        print "Nhap so cho ngoi: ";
        soChoNgoi_242 = gets.to_i;
        print "Nhap kieu dong co: ";
        kieuDongCo_242 = gets;
        print "Nhap nhien lieu: ";
        nhienLieu_242 = gets;
        print "Nhap so tui khi: ";
        soTuiKhi_242 = gets.to_i;
        print "Nhap ngay dang kiem: "
        ngayDangKiem_242 = gets
        oto = OTo.new(id_242, hangSX_242, namSX_242, dongXe_242, giaBan_242, bienSo_242, mauXe_242, soChoNgoi_242, kieuDongCo_242, nhienLieu_242, soTuiKhi_242 ,ngayDangKiem_242);
        arr_242.push(oto);

      when 'b'
        print "Nhap cong xuat: ";
        congXuat_242 = gets;
        print "Nhap dung tich: ";
        dungTich_242 = gets.to_i;
        xemay = XeMay.new(id_242, hangSX_242, namSX_242, dongXe_242, giaBan_242, bienSo_242, mauXe_242, congXuat_242, dungTich_242)
        arr_242.push(xemay)

      when 'c'
        print "Nhap trong tai: ";
        trongTai_242 = gets.to_i;
        xetai = XeTai.new(id_242, hangSX_242, namSX_242, dongXe_242, giaBan_242, bienSo_242, mauXe_242, trongTai_242)
        arr_242.push(xetai)
      end

      puts "Danh sach phuong tien : ";
        for i in 0..(arr_242.length() -1)
            arr_242[i].infor();
            puts "-----------";
        end
    
    when 2
      ql_242.xoaPhuongTien

    when 3
      ql_242.timKiemTheoMau
    
    else break;
    end

  end 

end 


