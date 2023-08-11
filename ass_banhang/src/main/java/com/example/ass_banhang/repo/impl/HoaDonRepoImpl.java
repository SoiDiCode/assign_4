package com.example.ass_banhang.repo.impl;

import com.example.ass_banhang.models.HoaDon;
import com.example.ass_banhang.models.HoaDonChiTiet;
import com.example.ass_banhang.repo.HoaDonRepo;
import com.example.ass_banhang.utils.HibernateUtils;
import com.example.ass_banhang.viewmodel.ViewDongSP;
import com.example.ass_banhang.viewmodel.Ngay;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.math.BigDecimal;
import java.text.ParseException;
import java.util.ArrayList;
import java.sql.Date;
import java.util.Calendar;
import java.util.List;



public class HoaDonRepoImpl implements HoaDonRepo {
    private final SessionFactory FACTORY = HibernateUtils.getFactory();
     private  Transaction transaction = null;
    @Override
    public HoaDon createHD(HoaDon hoaDon) {
        try(Session session = FACTORY.openSession()){
            transaction = session.beginTransaction();
            session.save(hoaDon);
            transaction.commit();
            return hoaDon;
        }catch (Exception exception){
            exception.printStackTrace();
            if (transaction != null) transaction.rollback();
        }
        return null;
    }

    @Override
    public List<HoaDonChiTiet> addListHDCT(List<HoaDonChiTiet> list) {

        try(Session session = FACTORY.openSession()){
            for (HoaDonChiTiet chiTiet: list) {
                transaction = session.beginTransaction();
                session.save(chiTiet);
                transaction.commit();
            }
            return list;
        }catch (Exception exception){
            if (transaction != null) transaction.rollback();
        }
        return null;
    }

    @Override
    public HoaDonChiTiet addHDCT(HoaDonChiTiet chiTiet) {
        try(Session session = FACTORY.openSession()){

                transaction = session.beginTransaction();
                session.save(chiTiet);
                transaction.commit();
           return chiTiet;
        }catch (Exception exception){
            if (transaction != null) transaction.rollback();
        }
        return null;

    }

    @Override
    public List<HoaDon> getListHDByIDKH(int idKH) {
        List<HoaDon> list = new ArrayList<>();
        try(Session session = FACTORY.openSession()){
            String hql = "select u from HoaDon u where u.khachHang.id = :idKH";
            Query query = session.createQuery(hql);
            query.setParameter("idKH" , idKH);
            list = query.getResultList();
        }
       return list;
    }

    @Override
    public List<HoaDon> getListHD() {
        List<HoaDon> list = new ArrayList<>();
        try(Session session = FACTORY.openSession()){
            Query query = session.createQuery("from HoaDon ");
            list = query.getResultList();
        }
        return list;
    }

    @Override
    public List<HoaDonChiTiet> getListHDCT(String idHD) {
        List<HoaDonChiTiet> list = new ArrayList<>();
        try(Session session = FACTORY.openSession()){
            Query query = session.createQuery("from HoaDonChiTiet as a where a.IdHoaDon.id = :id");
            query.setParameter("id",idHD);
            list = query.getResultList();
        }
        return list;
    }

    @Override
    public List<HoaDonChiTiet> getListHDCTByCTSP(String idCTSP) {
        List<HoaDonChiTiet> list = new ArrayList<>();
        try(Session session = FACTORY.openSession()){
            Query query = session.createQuery("from HoaDonChiTiet as a where a.IdChiTietSP.id = :id");
            query.setParameter("id",idCTSP);
            list = query.getResultList();
        }
        return list;
    }

    @Override
    public BigDecimal getTotalMoney() {
        int yearNow = Calendar.getInstance().get(Calendar.YEAR);
        String hql ="select sum(hd.tongTien) from HoaDon hd where hd.tinhTrang = 1 and year(hd.NgayThanhToan) = :yearNow";
        BigDecimal a = new BigDecimal("0");
        try(Session session = FACTORY.openSession()){
            Query query = session.createQuery(hql);
            query.setParameter("yearNow",yearNow);
            a = new BigDecimal(query.getSingleResult()+"");
        }
        return a;
    }

    public List<Double> getTotalByThang() {
        String hql ="select sum(hd.tongTien) from HoaDon hd where month(hd.NgayTao) = :month  and hd.tinhTrang = 1";
        List<Double> totalMonth = new ArrayList<>();
        double a = 0;
        try(Session session = FACTORY.openSession()){
            for (int i = 0; i < 12; i++) {
                Query query = session.createQuery(hql);
                query.setParameter("month",i+1);
                if (query.getSingleResult()== null){
                    a =0;
                }else{
                    a = (double)query.getSingleResult();
                }

                totalMonth.add(a);
            }

        }
        return totalMonth;
    }

    public ViewDongSP getSlTheoDSP(String idDSP) {

       ViewDongSP viewDongSP = null;
        String hql ="select new com.example.ass_banhang.viewmodel.ViewDongSP(hdct.IdChiTietSP.dongSP.Ten ,sum(hdct.soLuong)) " +
                " from HoaDonChiTiet hdct " +
                " where hdct.IdChiTietSP.dongSP.id = :id and hdct.IdHoaDon.tinhTrang = 1 "+
                " group by hdct.IdChiTietSP.dongSP.Ten ";
        double a = 0;
        try(Session session = FACTORY.openSession()){
                Query query = session.createQuery(hql);
                query.setParameter("id",idDSP);

//                    System.out.println(query.getResultList());
                if (!query.getResultList().isEmpty()){
                    viewDongSP = (ViewDongSP) query.getSingleResult();
                }

        }
        return viewDongSP;

    }

    @Override
    public HoaDonChiTiet getOne(String idHD, String idSPCT) {
        HoaDonChiTiet hoaDonChiTiet = null;
        String hql = "from HoaDonChiTiet as a where a.IdChiTietSP.id = :idSPCT and a.IdHoaDon.id = :idHD";
        try(Session session = FACTORY.openSession()){
            Query query = session.createQuery(hql);
            query.setParameter("idSPCT",idSPCT);
            query.setParameter("idHD",idHD);
            hoaDonChiTiet = (HoaDonChiTiet) query.getSingleResult();
        }catch (Exception e){
            e.printStackTrace();
        }
        return hoaDonChiTiet;
    }

    @Override
    public HoaDon getHDByID(String id) {
        HoaDon hoaDon =  null;
        try(Session session = FACTORY.openSession()){
             hoaDon = session.get(HoaDon.class,id);
        }
        return hoaDon;
    }

    @Override
    public HoaDonChiTiet update(String idHD, String idSPCT) {
        HoaDonChiTiet hoaDonChiTiet = getOne(idHD,idSPCT);
        Transaction transaction1 = null;
        if (hoaDonChiTiet != null){
            try(Session session = FACTORY.openSession()){
                transaction1 = session.beginTransaction();
                hoaDonChiTiet.setSoLuong(hoaDonChiTiet.getSoLuong()+1);
                session.update(hoaDonChiTiet);
                transaction1.commit();
            }catch (Exception e){
                if (transaction != null) transaction.rollback();
            }
        }
        return hoaDonChiTiet;
    }


    public HoaDonChiTiet updateSL(HoaDonChiTiet hoaDonChiTiet) {
        HoaDonChiTiet hoaDonChiTietExist = getOne(hoaDonChiTiet.getIdHoaDon().getId(),hoaDonChiTiet.getIdChiTietSP().getId());
        Transaction transaction1 = null;
        if (hoaDonChiTietExist != null){
            try(Session session = FACTORY.openSession()){
                transaction1 = session.beginTransaction();
                session.update(hoaDonChiTiet);
                transaction1.commit();
            }catch (Exception e){
                if (transaction != null) transaction.rollback();
            }
        }
        return hoaDonChiTiet;
    }

    @Override
    public int getSizeHDTH(int trangThai) {
        List<HoaDon> list = new ArrayList<>();
        try(Session session = FACTORY.openSession()){
            String hql = "select u from HoaDon u where u.tinhTrang = :trangThai";
            Query query = session.createQuery(hql);
            query.setParameter("trangThai" , trangThai);
            list = query.getResultList();
        }
        return list.size();
    }



    @Override
    public HoaDon updateHD(HoaDon hoaDon) {
        Transaction transaction1 = null;
        try(Session session = FACTORY.openSession()){
            transaction1 = session.beginTransaction();
            session.saveOrUpdate(hoaDon);
            transaction1.commit();
            return hoaDon;
        }catch (Exception e){
            if (transaction1 != null) transaction1.rollback();
        }
        return null;
    }

    @Override
    public boolean deleteSPCT(String idSPCT, String idHD) {
        HoaDonChiTiet hoaDonChiTiet = getOne(idHD,idSPCT);
        if (hoaDonChiTiet == null){
            return false;
        }
        Transaction transaction1 = null;
        if (hoaDonChiTiet != null){
            try(Session session = FACTORY.openSession()){
                transaction1 = session.beginTransaction();
                session.delete(hoaDonChiTiet);
                transaction1.commit();
                return true;
            }catch (Exception e){
                if (transaction != null) transaction.rollback();
            }
        }
        return false;
    }
    @Override
    public BigDecimal getTotalMoneyDay() {
        int day = Calendar.getInstance().get(Calendar.DAY_OF_MONTH);
        int month = Calendar.getInstance().get(Calendar.MONTH)+1;
        int year = Calendar.getInstance().get(Calendar.YEAR);
//        System.out.println(day +" "+ month +" "+ year);
       String hql ="select sum(hd.tongTien) from HoaDon hd where " +
               "year(hd.NgayThanhToan) = :year and " +
               " month(hd.NgayThanhToan) = :month and " +
               " day(hd.NgayThanhToan) = :day " +
               " and hd.tinhTrang = 1";
//        String hql = "select new com.example.ass_banhang.viewmodel.Ngay( year(hd.NgayThanhToan)," +
//                " month(hd.NgayThanhToan) , " +
//                "day (hd.NgayThanhToan)) " +
//                "from HoaDon hd where hd.tinhTrang = 1 and hd.id='57F13A93-4143-4021-BF1A-54810F16824E'";
        BigDecimal a = new BigDecimal("0");
        Ngay ngay = null;
        try(Session session = FACTORY.openSession()){

            Query query = session.createQuery(hql);
            query.setParameter("year",year);
            query.setParameter("month",month);
            query.setParameter("day",day);
//           ngay = (Ngay) query.getSingleResult();
            a = new BigDecimal(query.getSingleResult()+"");
            // a = new BigDecimal(query.getSingleResult()+"");
        }
        return a;
    }

    public List<HoaDon> timKiemTheoKhoang(Date ngayBD , Date ngayKT){
        List<HoaDon> list = new ArrayList<>();
        String hql = "SELECT hd FROM HoaDon as hd WHERE hd.NgayTao BETWEEN :ngayBD AND :ngayKT";
        try (Session session = FACTORY.openSession()) {

            Query query = session.createQuery(hql);
            query.setParameter("ngayBD",ngayBD);
            query.setParameter("ngayKT",ngayKT);
            list =  query.list();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<HoaDon> timKiemTuNgay(Date ngay){
        List<HoaDon> list = new ArrayList<>();
        String hql = "SELECT hd FROM HoaDon as hd WHERE hd.NgayTao >= :ngay";
        try (Session session = FACTORY.openSession()) {

            Query query = session.createQuery(hql);
            query.setParameter("ngay",ngay);

            list =  query.list();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public List<HoaDon> phanTrang(List<HoaDon> list, int start, int end) {
        List<HoaDon> listPhanTrang = new ArrayList<>();
        for (int i = start; i < end; i++) {
            listPhanTrang.add(list.get(i));
        }
        return listPhanTrang;
    }
    public static void main(String[] args) throws ParseException {
        HoaDonRepo repo = new HoaDonRepoImpl();
//        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd ");
//        Date date = new Date();
//        System.out.println(date);
//        String strDate = formatter.format(date);
//        System.out.println(formatter.parse(strDate));
//        long millis=System.currentTimeMillis();
//        java.sql.Date date=new java.sql.Date(millis);
//
//        System.out.println(date);
//
//        SimpleDateFormat formatter = new SimpleDateFormat();
//        System.out.println(formatter.format(date));
        Date ngayBD = Date.valueOf("2023-02-01");
        Date ngayKT = Date.valueOf("2023-02-10");
        Date ngay = Date.valueOf("2023-02-07");
        System.out.println(repo.timKiemTuNgay(ngayBD));
//        System.out.println(hdR.timKiemTuNgay(ngay));
    }
}
