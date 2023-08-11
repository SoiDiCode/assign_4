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
@Table(name ="ChiTietSP")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
@Builder
public class ChiTietSP implements Serializable{
    @Id
    private String id;
   
   @ManyToOne
   @JoinColumn(name = "IdSP" ,
   referencedColumnName = "id"
   )
   private SanPham sanPham;

   @ManyToOne
   @JoinColumn(name = "IdDongSP")
   private DongSP dongSP;
   
   @Column(name = "NamBH")
   private int namBH;
   @Column(name = "MoTa")
   private String moTa;
   @Column(name = "ImgUrl")
   private String imgUrl;
   @Column(name = "SoLuongTon")
   private int soLuongTon;
   @Column(name = "GiaNhap")
   private Double giaNhap;
   @Column(name = "GiaBan")
   private Double giaBan;

}
