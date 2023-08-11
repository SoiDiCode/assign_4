package com.example.ass_banhang.controller;

import com.example.ass_banhang.models.ChiTietSP;
import com.example.ass_banhang.models.HoaDon;
import com.example.ass_banhang.models.HoaDonChiTiet;
import com.example.ass_banhang.repo.DongSpRepo;
import com.example.ass_banhang.repo.HoaDonRepo;
import com.example.ass_banhang.repo.SanPhamChiTietRepo;
import com.example.ass_banhang.repo.impl.DongSpRepoImpl;
import com.example.ass_banhang.repo.impl.HoaDonRepoImpl;
import com.example.ass_banhang.repo.impl.SPCTRepoImpl;
import com.google.gson.Gson;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@WebServlet(name = "BanHangServlet", value = {
//        "/ban-hang/home",
        "/ban-hang/DSP",
        "/ban-hang/addHDSP",
        "/ban-hang/thanhtoan",
        "/ban-hang/remove",
        "/ban-hang/editQuantity"


})
public class BanHangServlet extends HttpServlet {
    private final SanPhamChiTietRepo repo;
    private final DongSpRepo spRepo;
    private final HoaDonRepo repoHD;

    public BanHangServlet() {
        this.repo = new SPCTRepoImpl();
        this.spRepo = new DongSpRepoImpl();
        this.repoHD = new HoaDonRepoImpl();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       String uri = request.getRequestURI();
       if (uri.contains("/ban-hang/DSP")) {
            loadDSP(request,response);
        } else if (uri.contains("/ban-hang/addHDSP")) {
            addSPInHD(request,response);
       }else if (uri.contains("/ban-hang/thanhtoan")) {
           thanhToan(request,response);
       }else if (uri.contains("/ban-hang/remove")) {
           removeSPCT(request,response);
       }else if (uri.contains("/ban-hang/editQuantity")) {
           editQuantity(request,response);
       }
    }

    private void editQuantity(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int num = Integer.parseInt(request.getParameter("num"));
        String id = request.getParameter("id");
        int quantity;
        HoaDon hoaDon = (HoaDon) request.getSession().getAttribute("hd");
        HoaDonChiTiet chiTiet = repoHD.getOne(hoaDon.getId(),id);
        if (chiTiet == null) System.out.println("trong");
        chiTiet.setSoLuong(chiTiet.getSoLuong()+num);
        System.out.println(chiTiet);
        repoHD.updateSL(chiTiet);
        List<HoaDonChiTiet> list = repoHD.getListHDCT(hoaDon.getId());
        Gson gson = new Gson();
        response.getWriter().println(gson.toJson(list));
    }

    private void removeSPCT(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String idSPCT = request.getParameter("idctsp");
        HoaDon hdSession = (HoaDon)request.getSession().getAttribute("hd");
        repoHD.deleteSPCT(idSPCT, hdSession.getId());
        List<HoaDonChiTiet> list = repoHD.getListHDCT(hdSession.getId());
        response.getWriter().println(new Gson().toJson(list));
    }

    
    private void thanhToan(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HoaDon hdSession = (HoaDon)request.getSession().getAttribute("hd");
        // set lai trang thai cua hoa don
        // 2 TH :
        // neu ko co san pham
        // co san pham
            List<HoaDonChiTiet> list = repoHD.getListHDCT(hdSession.getId());


            if (list.isEmpty()){
                request.setAttribute("messErr","Hoa don trong vui long chon san pham");
                loadDSP(request,response);
            }else{
                double tong = 0;
                for (HoaDonChiTiet chiTiet: list) {
                    tong += chiTiet.getSoLuong()*chiTiet.getDonGia();
                }
                System.out.println(tong);

                hdSession.setTinhTrang(1);
                hdSession.setNgayThanhToan(new Date());
                hdSession.setTongTien(tong);
                // set them tong gia
                repoHD.updateHD(hdSession);
                request.setAttribute("messErr","Thanh toan thanh cong");
               loadDSP(request,response);
            }


    }

    private void addSPInHD(HttpServletRequest request, HttpServletResponse response) throws IOException {

        // Chia 2 TH:
          // TH1 : co => update sl
          // Th2 : khong thi add
        // lay hoa don qua session
        HoaDon hoaDon = (HoaDon) request.getSession().getAttribute("hd");
        if (hoaDon == null){
            response.getWriter().println(1);
        }else{
            // lay ma SPCT
            String idSPCT = request.getParameter("idctsp");
            ChiTietSP chiTietSP = repo.getSPByID(idSPCT);

            HoaDonChiTiet hoaDonChiTiet = repoHD.getOne(hoaDon.getId(),chiTietSP.getId());
            if (hoaDonChiTiet == null){
                HoaDonChiTiet chiTiet = new HoaDonChiTiet();
                chiTiet.setIdChiTietSP(chiTietSP);
                chiTiet.setIdHoaDon(hoaDon);
                chiTiet.setSoLuong(1);
                chiTiet.setDonGia(chiTietSP.getGiaBan());
                repoHD.addHDCT(chiTiet);
            }else {
                repoHD.update(hoaDon.getId(),chiTietSP.getId());
            }

            List<HoaDonChiTiet> list = repoHD.getListHDCT(hoaDon.getId());
            Gson gson = new Gson();
            response.getWriter().println(gson.toJson(list));
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    public void home(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setAttribute("listHD",repoHD.getListHD());
        request.setAttribute("listDSP",spRepo.getList());
        request.getRequestDispatcher("/views/banhang.jsp").forward(request,response);
    }

    public void loadDSP(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String ma = request.getParameter("ma");
        if (ma == null){
            ma = "all";
        }
        List<ChiTietSP> list = new ArrayList<>();
        switch (ma){
            case "all":
                list = repo.getAll();
                break;
            default:
                list = repo.getSPByDongSP(ma);
        }
        request.setAttribute("listSP",list);
        home(request,response);
    }


}
