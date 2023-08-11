package com.example.ass_banhang.repo;

import com.example.ass_banhang.models.KhachHang;

public interface UserRepo {
        KhachHang getHK(String number , String pass);
}
