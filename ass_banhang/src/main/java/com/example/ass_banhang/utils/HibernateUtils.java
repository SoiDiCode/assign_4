/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.example.ass_banhang.utils;

import java.util.Properties;

import com.example.ass_banhang.models.*;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.cfg.Environment;
import org.hibernate.service.ServiceRegistry;

/**
 *
 * @author SoiDiCode
 */
public class HibernateUtils {
    public  static SessionFactory FACTORY;
    static {
        Configuration con = new Configuration();
        Properties pro = new Properties();
        pro.setProperty(Environment.DIALECT , "org.hibernate.dialect.SQLServerDialect");
        pro.setProperty(Environment.DRIVER , "com.microsoft.sqlserver.jdbc.SQLServerDriver");
        pro.setProperty(Environment.URL,"jdbc:sqlserver://localhost:1433;database=FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041;");
        pro.setProperty(Environment.USER, "sa");
        pro.setProperty(Environment.PASS, "123456789aA@");
       // pro.setProperty(Environment.SHOW_SQL, "true");
        pro.setProperty(Environment.HBM2DDL_AUTO, "none");
        // add pro vào con
        con.setProperties(pro);
        
        // add các lớp mapping 
        
        con.addAnnotatedClass(SanPham.class);
        con.addAnnotatedClass(DongSP.class);
        con.addAnnotatedClass(ChucVu.class);
        con.addAnnotatedClass(CuaHang.class);
        con.addAnnotatedClass(NhanVien.class);
        con.addAnnotatedClass(KhachHang.class);
        con.addAnnotatedClass(GioHang.class);
        con.addAnnotatedClass(HoaDon.class);
        con.addAnnotatedClass(ChiTietSP.class);
        con.addAnnotatedClass(HoaDonChiTiet.class);
        con.addAnnotatedClass(GioHangChiTiet.class);
        
        // Tạo lớp đăng kí
        ServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder().applySettings(con.getProperties()).build();
        FACTORY = con.buildSessionFactory(serviceRegistry);
    }
    
    public static SessionFactory getFactory(){
        return FACTORY;
    }
    public static void main(String[] args) {
        System.out.println(getFactory());
    }
}
