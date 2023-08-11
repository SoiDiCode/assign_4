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
@Table(name = "GioHangChiTiet")
@IdClass(GioHangChiTietID.class)
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
@Builder
public class GioHangChiTiet implements Serializable {
    @Id
    @ManyToOne
    @JoinColumn(name = "IdGioHang")
    private GioHang IdGioHang;
    
    @Id
    @ManyToOne
    @JoinColumn(name = "IdChiTietSP")
    private ChiTietSP IdChiTietSP;
    
    @Column(name = "SoLuong")
    private Integer soLuong;
    
    @Column(name = "DonGia")
    private Double donGia;
    
    @Column(name = "DonGiaKhiGiam")
    private Double donGiaKhiGiam;


}
