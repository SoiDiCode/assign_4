package com.example.ass_banhang.controller;

import com.example.ass_banhang.models.HoaDon;
import com.example.ass_banhang.models.HoaDonChiTiet;
import com.example.ass_banhang.models.SanPham;
import com.example.ass_banhang.repo.HoaDonRepo;
import com.example.ass_banhang.repo.impl.HoaDonRepoImpl;
import com.google.gson.Gson;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "SanPhamServlet", value ={
        "/sanpham/CTSP"
})
public class SanPhamServlet extends HttpServlet {
    private final HoaDonRepo repoHd;

    public SanPhamServlet() {
        this.repoHd = new HoaDonRepoImpl();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uri = request.getRequestURI();
        if (uri.contains("CTSP")){
            String idHD =request.getParameter("idHD");
            HoaDon hoaDon = repoHd.getHDByID(idHD);
            request.getSession().setAttribute("hd",hoaDon);
            List<HoaDonChiTiet> list = repoHd.getListHDCT(idHD);
            PrintWriter writer = response.getWriter();
            Gson gson = new Gson();
            writer.println(gson.toJson(list));
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
