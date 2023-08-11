package com.example.ass_banhang.repo.impl;

import com.example.ass_banhang.models.KhachHang;
import com.example.ass_banhang.repo.UserRepo;
import com.example.ass_banhang.utils.HibernateUtils;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

public class UserRepoImpl implements UserRepo {
    private final SessionFactory FACTORY = HibernateUtils.getFactory();
    @Override
    public KhachHang getHK(String phone, String pass) {
        String hql = "select user from KhachHang user where user.SDT = : phone and user.matKhau = :pass ";
        KhachHang khachHang = null;
        try(Session session = FACTORY.openSession()){
            Query<KhachHang> query = session.createQuery(hql);
            query.setParameter("phone",phone);
            query.setParameter("pass",pass);
            khachHang = query.getSingleResult();
            return khachHang;
        }
    }

    public static void main(String[] args) {
        UserRepo userRepo = new UserRepoImpl();
        System.out.println(userRepo.getHK("0123456788","123"));
    }
}
