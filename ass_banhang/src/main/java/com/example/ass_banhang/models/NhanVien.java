/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.example.ass_banhang.models;

import lombok.*;

import jakarta.persistence.*;
import java.io.Serializable;

/**
 *
 * @author SoiDiCode
 */
@Entity
@Table(name = "NhanVien")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Builder
public class NhanVien implements Serializable{
    @Id
    private String id;
    
    @ManyToOne
    @JoinColumn(name = "IdCH")
    private CuaHang cuaHang;
    
    @ManyToOne
    @JoinColumn(name = "IdCV")
    private ChucVu chucVu;
    
    @ManyToOne()
    @JoinColumn(name = "IdGuiBC")
    private NhanVien nhanVien;

    @Override
    public String toString() {
        return "NhanVien{" +
                "id='" + id + '\'' +
                ", cuaHang=" + cuaHang +
                ", chucVu=" + chucVu +
                ", IDnhanVien=" + nhanVien.getId() +
                '}';
    }
}
