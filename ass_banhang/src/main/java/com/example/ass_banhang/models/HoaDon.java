/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.example.ass_banhang.models;

import lombok.*;

import jakarta.persistence.*;
import java.io.Serializable;
import java.util.Date;

/**
 *
 * @author SoiDiCode
 */
@Entity
@Table(name = "HoaDon")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
@Builder
public class HoaDon implements Serializable {
    @Id
    private String id;
    
    @ManyToOne
    @JoinColumn(name = "IdKH")
    private KhachHang khachHang;
    
    @ManyToOne
    @JoinColumn(name = "IdNV")
    private NhanVien nhanVien;
    
    @Column(name = "Ma")
    private String ma;
    
    @Column(name = "NgayTao")
    private Date NgayTao;
    
    @Column(name = "NgayThanhToan")
    private Date NgayThanhToan;
    
    @Column(name = "NgayShip")
    private Date NgayShip;
    
    @Column(name = "NgayNhan")
    private Date NgayNhan;
    
    @Column(name = "TinhTrang")
    private Integer tinhTrang;
    
    @Column(name = "TenNguoiNhan")
    private String tenNguoiNhan;
    
    @Column(name = "DiaChi")
    private String diaChi;
    
    @Column(name = "SDT")
    private String SDT;
    @Column(name = "tongTien")
    private Double tongTien;

}
