package com.example.ass_banhang.repo.impl;

import com.example.ass_banhang.models.ChiTietSP;
import com.example.ass_banhang.repo.SanPhamChiTietRepo;
import com.example.ass_banhang.utils.HibernateUtils;
import org.hibernate.Hibernate;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

import java.util.ArrayList;
import java.util.List;

public class SPCTRepoImpl implements SanPhamChiTietRepo {
    private final static SessionFactory FACTORY = HibernateUtils.getFactory();
    @Override
    public List<ChiTietSP> getAll() {
        List<ChiTietSP> list = new ArrayList<>();
        try(Session session = FACTORY.openSession()){
           Query query = session.createQuery("from ChiTietSP ");
           list = query.getResultList();
       }
       return list;
    }

    public List<ChiTietSP> getAllByOption(Double price) {
        String hql = "select pro from ChiTietSP  as pro where pro.giaBan > :price ";
        List<ChiTietSP> list = new ArrayList<>();
        try(Session session = FACTORY.openSession()){
            Query query = session.createQuery(hql);
            query.setParameter("price" , price);
            list = query.getResultList();
        }
        return list;
    }

    @Override
    public ChiTietSP getSPByID(String id) {
        ChiTietSP chiTietSP = new ChiTietSP();
        try(Session session = FACTORY.openSession()){
          chiTietSP = session.get(ChiTietSP.class,id);
        }

        return chiTietSP;
    }

    @Override
    public List<ChiTietSP> getSPByDongSP(String maDSP) {
        String hql = "select pro from ChiTietSP  as pro where pro.dongSP.ma = :ma ";
        List<ChiTietSP> list = new ArrayList<>();
        try(Session session = FACTORY.openSession()){
            Query query = session.createQuery(hql);
            query.setParameter("ma" , maDSP);
            list = query.getResultList();
        }
        return list;
    }
    public List<ChiTietSP> search(String name) {
        List<ChiTietSP> list = new ArrayList<>();

        try(Session session = FACTORY.openSession()){
            Query query = session.createQuery("from ChiTietSP sp where sp.sanPham.Ten like :ten ");
            query.setParameter("ten","%"+name+"%");
            list = query.getResultList();
        }
        return list;
    }


    public static void main(String[] args) {
        SanPhamChiTietRepo repo = new SPCTRepoImpl();
        System.out.println(repo.getSPByDongSP("DSP1"));
    }
}
