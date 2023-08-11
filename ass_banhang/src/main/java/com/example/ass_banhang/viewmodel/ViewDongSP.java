package com.example.ass_banhang.viewmodel;

import lombok.*;

@Getter
@Setter
@ToString
public class ViewDongSP {
    private String tenDSP;
    private int soluong;
    public ViewDongSP(String tenDSP, long soluong) {
        this.tenDSP = tenDSP;
        this.soluong = Integer.valueOf(soluong+"");
    }

    public ViewDongSP() {
    }
}
