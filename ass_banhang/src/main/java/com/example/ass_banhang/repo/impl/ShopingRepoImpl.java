package com.example.ass_banhang.repo.impl;

import com.example.ass_banhang.models.ChiTietSP;
import com.example.ass_banhang.models.GioHang;
import com.example.ass_banhang.models.GioHangChiTiet;
import com.example.ass_banhang.repo.ShoppingRepo;
import com.example.ass_banhang.repo.UserRepo;
import com.example.ass_banhang.utils.HibernateUtils;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.util.List;

public class ShopingRepoImpl implements ShoppingRepo {
    private final SessionFactory FACTORY = HibernateUtils.getFactory();
    @Override
    public List<GioHangChiTiet> getAll(int idGioHang) {
        String hql = "select ghct from GioHangChiTiet ghct where ghct.IdGioHang.id = :id";
        List<GioHangChiTiet> list = null;
        try(Session session = FACTORY.openSession()){
            Query<GioHangChiTiet> query = session.createQuery(hql);
            query.setParameter("id",idGioHang);
            list = query.getResultList();
            return list;
        }

    }

    @Override
    public GioHang getGioHangByIDKH(int idKH) {
        String hql = "select gh from GioHang gh where gh.khachHang.id = :id";
        List<GioHang> list = null;
        try(Session session = FACTORY.openSession()){
            Query<GioHang> query = session.createQuery(hql);
            query.setParameter("id",idKH);
            list = query.getResultList();
            return list.get(0);
        }

    }

    @Override
    public GioHangChiTiet addToGioHang(GioHangChiTiet gioHangChiTiet) {
        Transaction transaction = null;
        try(Session session = FACTORY.openSession()){
            transaction = session.beginTransaction();
            session.save(gioHangChiTiet);
            transaction.commit();
            return gioHangChiTiet;
        }catch (Exception e){
            if (transaction != null) transaction.rollback();
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public boolean editQuantity(int idGioHang, int idSP , int quantity) {
        GioHangChiTiet chiTiet = getGioHangChiTiet(idGioHang,idSP);
        if (chiTiet != null){
            Transaction transaction = null;
            try(Session session = FACTORY.openSession()){
                transaction = session.beginTransaction();
                chiTiet.setSoLuong(chiTiet.getSoLuong() + quantity);
                session.update(chiTiet);
                transaction.commit();
                return true;
            }catch (Exception e){
                if(transaction != null) transaction.rollback();
                e.printStackTrace();
            }
        }
        return false;
    }

    @Override
    public boolean deleteItem(int idGioHang, int idSP) {
        GioHangChiTiet chiTiet = getGioHangChiTiet(idGioHang,idSP);
        if (chiTiet != null){
            Transaction transaction = null;
            try(Session session = FACTORY.openSession()){
                transaction = session.beginTransaction();
                session.delete(chiTiet);
                transaction.commit();
                return true;
            }catch (Exception e){
                if(transaction != null) transaction.rollback();
                e.printStackTrace();
            }
        }
        return false;
    }

    @Override
    public GioHangChiTiet getGioHangChiTiet(int idGioHang, int idSP) {
        String hql = "select ghct from GioHangChiTiet ghct where " +
                "ghct.IdGioHang.id = :idGioHang and ghct.IdChiTietSP.id = :idSP";
        List<GioHangChiTiet> list = null;
        try(Session session = FACTORY.openSession()){
            Query<GioHangChiTiet> query = session.createQuery(hql);
            query.setParameter("idGioHang",idGioHang);
            query.setParameter("idSP",idSP);
            list = query.getResultList();
           if (list != null){
               return list.get(0);
           }
        }
        return null;
    }

    public static void main(String[] args) {
        ShoppingRepo userRepo = new ShopingRepoImpl();
        System.out.println(userRepo.getGioHangByIDKH(1));
    }
}
