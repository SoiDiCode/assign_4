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
@Table(name = "KhachHang")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
@Builder
public class KhachHang implements Serializable{
    @Id
    private String id;


    @Column(name = "Ma" , unique = true)
    private String ma;
    
    @Column(name = "Ten")
    private String ten;
    
    @Column(name = "TenDem")
    private String tenDem;
    
    @Column(name = "Ho")
    private String ho;
    
    @Column(name = "NgaySinh")
    private Date ngaySinh;
    
    @Column(name = "SDT")
    private String SDT;
    
    @Column(name = "DiaChi")
    private String diaChi;
    
    @Column(name = "ThanhPho")
    private String thanhPho;
    
    @Column(name = "QuocGia")
    private String quocGia;
    
    @Column(name = "MatKhau")
    private String matKhau;

}
