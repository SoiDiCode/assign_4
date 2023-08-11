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
@Table(name = "GioHang")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
@Builder
public class GioHang implements Serializable{
    @Id
    private String id;
    
    @OneToOne
    @JoinColumn(name = "IdKH")
    private KhachHang khachHang;

    @Column(name = "Ma" , unique = true)
    private String ma;
    
    @Column(name = "NgayTao")
    private Date ngayTao;
    
    @Column(name = "NgayThanhToan")
    private Date ngayThanhToan;

    @Column(name = "DiaChi")
    private String diaChi;



}
