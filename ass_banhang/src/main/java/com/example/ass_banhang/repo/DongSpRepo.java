package com.example.ass_banhang.repo;

import com.example.ass_banhang.models.DongSP;

import java.util.List;

public interface DongSpRepo {
    List<DongSP> getList();
    List<DongSP> getByMa(String ma);

}
