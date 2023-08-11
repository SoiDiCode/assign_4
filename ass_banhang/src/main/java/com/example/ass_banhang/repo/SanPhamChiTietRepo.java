package com.example.ass_banhang.repo;

import com.example.ass_banhang.models.ChiTietSP;

import java.util.List;

public interface SanPhamChiTietRepo {
    List<ChiTietSP> getAll();
    ChiTietSP getSPByID(String id);
    List<ChiTietSP> search(String key);
    List<ChiTietSP> getAllByOption(Double price);
    List<ChiTietSP> getSPByDongSP(String ma);
}
