package com.example.ass_banhang.controller;

import com.example.ass_banhang.models.ChiTietSP;
import com.example.ass_banhang.models.DongSP;
import com.example.ass_banhang.models.HoaDon;
import com.example.ass_banhang.repo.DongSpRepo;
import com.example.ass_banhang.repo.HoaDonRepo;
import com.example.ass_banhang.repo.SanPhamChiTietRepo;
import com.example.ass_banhang.repo.impl.DongSpRepoImpl;
import com.example.ass_banhang.repo.impl.HoaDonRepoImpl;
import com.example.ass_banhang.repo.impl.SPCTRepoImpl;
import com.example.ass_banhang.viewmodel.ViewDongSP;
import com.google.gson.Gson;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import org.apache.commons.beanutils.BeanUtils;

import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.*;

@WebServlet(name = "HoaDonServlet", value = {
        "/hoa-don/lichsu",
        "/hoa-don/listHD",
        "/hoa-don/thongke",
        "/hoa-don/createHD",
        "/hoa-don/doanhthu",
        "/hoa-don/search",
        "/hoa-don/phantrang"
})
public class HoaDonServlet extends HttpServlet {
    private final HoaDonRepo repo = new HoaDonRepoImpl();
    private final DongSpRepo  repoDSP = new DongSpRepoImpl();
    private final SanPhamChiTietRepo repoSP = new SPCTRepoImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       String uri = request.getRequestURI();
        if(uri.contains("/hoa-don/listHD")){
           loadHome(request,response);
        }else if(uri.contains("/hoa-don/thongke")){
            thongKe(request,response);
        }else if(uri.contains("/hoa-don/doanhthu")){
            doanhThu(request,response);
        }else if(uri.contains("/hoa-don/phantrang")){
           loadHome(request,response);
        }

    }

    private void doanhThu(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String dieuKien = request.getParameter("dieuKien");
        if (dieuKien.equals("tien")){
            List<Double> list = repo.getTotalByThang();
            Gson gson = new Gson();
            response.getWriter().println(gson.toJson(list));
        }else if(dieuKien.equals("dongSP")){
            List<DongSP> list = repoDSP.getList();
            List<ViewDongSP> list1 = new ArrayList<>();
            for (DongSP sp : list){
               ViewDongSP ss =  repo.getSlTheoDSP(sp.getId());
               if (ss == null){
                   ss = new ViewDongSP(sp.getTen(),0);
               }
               list1.add(ss);
            }


            Gson gson = new Gson();
            response.getWriter().println(gson.toJson(list1));
        }

    }

    private void thongKe(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("total",repo.getTotalMoney().intValue());
        request.setAttribute("sizeCTH",repo.getSizeHDTH(0));
        request.setAttribute("sizeDTH",repo.getSizeHDTH(1));
        request.setAttribute("sizeHTH",repo.getSizeHDTH(-1));
        request.setAttribute("totalDay",repo.getTotalMoneyDay().intValue());
        request.getRequestDispatcher("/views/thongke.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uri = request.getRequestURI();
        if(uri.contains("/hoa-don/createHD")){
           addHD(request,response);
        } else if (uri.contains("/hoa-don/search")) {
            search(request,response);
        }
    }

    public void loadHome(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int page;
        int numperpage = 5;
        List<HoaDon> list = repo.getListHD();
        int size = list.size();
        int num = (size%5==0?size/numperpage : size/numperpage+1);
        String xpage = request.getParameter("page");
        if (xpage==null) page =1;
        else{
            page = Integer.parseInt(xpage);
        }
        int start = (page-1)*numperpage;
        int end = Math.min(page*numperpage , size);

//        if (list.size() % 6 == 0) end = page*6;
//        else end = (list.size() -1);

        List<HoaDon> listPhanTrang = repo.phanTrang(list,start,end);
        request.setAttribute("data",listPhanTrang);
        request.setAttribute("page",page);
        request.setAttribute("num" , num);


        //request.getRequestDispatcher("/views/list.jsp").forward(request,response);


        request.setAttribute("listHD",listPhanTrang);
        request.getRequestDispatcher("/views/QLHD.jsp").forward(request,response);
    }

    public void search(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String ngayBD = request.getParameter("ngayBatDau");
        String ngayKT = request.getParameter("ngayKetThuc");
        System.out.println(ngayBD+"---"+ngayKT);
        if (ngayBD.equals("") & ngayKT.equals("")) {

            request.setAttribute("listHD", repo.getListHD());
            request.setAttribute("mess", "");
        }
        // tim kiem 1 ngay
        if (ngayKT.equals("") && !ngayBD.equals("")) {
            request.setAttribute("listHD", repo.timKiemTuNgay(Date.valueOf(ngayBD)));
            request.setAttribute("mess", "Từ Ngày " + ngayBD);
        }
        // tim kiem khoang ngay
        if (!ngayKT.equals("") && !ngayBD.equals("")) {
            request.setAttribute("listHD", repo.timKiemTheoKhoang(Date.valueOf(ngayBD), Date.valueOf(ngayKT)));
            request.setAttribute("mess", "Từ Ngày " + ngayBD + " Đến Ngày " + ngayKT);
        }
        request.getRequestDispatcher("/views/QLHD.jsp").forward(request,response);
    }

    public void addHD(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HoaDon hoaDon = new HoaDon();

        try {
            BeanUtils.populate(hoaDon,request.getParameterMap());
            hoaDon.setId(UUID.randomUUID().toString());
            hoaDon.setMa("MaHD"+ new SimpleDateFormat("ddMMyyyy").format(new Date(System.currentTimeMillis())) + System.currentTimeMillis());
            hoaDon.setNgayTao(new Date(System.currentTimeMillis()));
            hoaDon.setTinhTrang(0);
            repo.createHD(hoaDon);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        request.getSession().setAttribute("hd",hoaDon);
        response.sendRedirect("/ban-hang/DSP");
    }

    public void loadDSP(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String ma = request.getParameter("ma");
        if (ma == null){
            ma = "all";
        }
        List<ChiTietSP> list = new ArrayList<>();
        switch (ma){
            case "all":
                list = repoSP.getAll();
                break;
            default:
                list = repoSP.getSPByDongSP(ma);
        }
        request.setAttribute("listSP",list);
        home(request,response);
    }

    public void home(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("listHD",repo.getListHD());
        request.setAttribute("listDSP",repoDSP.getList());
        request.getRequestDispatcher("/views/banhang.jsp").forward(request,response);
    }


}
