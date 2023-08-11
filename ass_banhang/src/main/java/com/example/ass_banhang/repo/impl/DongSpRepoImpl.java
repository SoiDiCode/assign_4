package com.example.ass_banhang.repo.impl;

import com.example.ass_banhang.models.DongSP;
import com.example.ass_banhang.repo.DongSpRepo;
import com.example.ass_banhang.utils.HibernateUtils;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.internal.SessionFactoryImpl;
import org.hibernate.query.Query;

import java.util.ArrayList;
import java.util.List;

public class DongSpRepoImpl implements DongSpRepo {
    private final SessionFactory FACTORY = HibernateUtils.getFactory();
    @Override
    public List<DongSP> getList() {
        List<DongSP> list = new ArrayList<>();
        try(Session session = FACTORY.openSession()){
            Query query = session.createQuery("From DongSP ");
            list = query.getResultList();
        }
        return list;
    }

    @Override
    public List<DongSP> getByMa(String ma) {
        List<DongSP> list = new ArrayList<>();
        String hql = "select dsp from DongSP dsp where dsp.ma = :ma";
        try(Session session = FACTORY.openSession()){
            Query query = session.createQuery(hql);
            query.setParameter("ma",ma);
            list = query.getResultList();
        }
        return list;
    }

    public static void main(String[] args) {
        DongSpRepo repo = new DongSpRepoImpl();
        System.out.println(repo.getList());

    }
}
