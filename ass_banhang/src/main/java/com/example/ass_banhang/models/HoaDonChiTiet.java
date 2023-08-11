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
@Table(name = "HoaDonChiTiet")
@IdClass(HoaDonChiTietID.class)
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
@Builder
public class HoaDonChiTiet implements Serializable{
    @Id
    @ManyToOne
    @JoinColumn(name = "IdHoaDon")
    private HoaDon IdHoaDon;
    
    @Id
    @ManyToOne
    @JoinColumn(name = "IdChiTietSP")
    private ChiTietSP IdChiTietSP;
    
    @Column(name = "SoLuong")
    private Integer soLuong;
    
    @Column(name = "DonGia")
    private Double donGia;

    
}
