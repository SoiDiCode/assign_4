package com.example.ass_banhang.repo;

import com.example.ass_banhang.models.HoaDon;
import com.example.ass_banhang.models.HoaDonChiTiet;
import com.example.ass_banhang.viewmodel.ViewDongSP;

import java.math.BigDecimal;
import java.sql.Date;
import java.util.List;

public interface HoaDonRepo {
//    tạo mới hóa đơn
//    tạo moi hóa đơn chi tiết
//    lấy dữ liệu từ shopping đẩy qua hóa đơn chi tiết
//    xoa dữ liệu trong cart
//    update lại số lượng trong sp chi tiết
//    thông baoas'
    HoaDon createHD(HoaDon hoaDon);
    List<HoaDonChiTiet> addListHDCT(List<HoaDonChiTiet> list);
    HoaDonChiTiet addHDCT(HoaDonChiTiet chiTiet);
    List<HoaDon> getListHDByIDKH(int idKH);
    List<HoaDon> getListHD();
    List<HoaDonChiTiet> getListHDCT(String idHD);
    List<HoaDonChiTiet> getListHDCTByCTSP(String idCTSP);
    BigDecimal getTotalMoney();
    List<Double> getTotalByThang();
    ViewDongSP getSlTheoDSP(String idDSP);
    HoaDonChiTiet getOne(String idHD , String idSPCT);
    HoaDon getHDByID(String id);
    HoaDonChiTiet update(String idHD , String idSPCT);
    HoaDon updateHD(HoaDon hoaDon);

    boolean deleteSPCT(String idSPCT , String idHD);

    HoaDonChiTiet updateSL(HoaDonChiTiet hoaDonChiTiet);

    int getSizeHDTH(int trangThai);

    BigDecimal getTotalMoneyDay();
    List<HoaDon> timKiemTuNgay(Date ngay);
    List<HoaDon> timKiemTheoKhoang(Date ngayBD , Date ngayKT);
    List<HoaDon> phanTrang(List<HoaDon> list, int start, int end);

}
