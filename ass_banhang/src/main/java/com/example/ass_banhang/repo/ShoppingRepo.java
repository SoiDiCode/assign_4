package com.example.ass_banhang.repo;

import com.example.ass_banhang.models.GioHang;
import com.example.ass_banhang.models.GioHangChiTiet;

import java.util.List;

public interface ShoppingRepo {

    List<GioHangChiTiet> getAll(int idGioHang);

    GioHang getGioHangByIDKH(int idKH);

    GioHangChiTiet addToGioHang(GioHangChiTiet gioHangChiTiet);

    boolean editQuantity(int idGioHang , int idSP , int quantity);

    boolean deleteItem(int idGioHang , int idSP);

    GioHangChiTiet getGioHangChiTiet(int idGioHang , int idSP);
}
