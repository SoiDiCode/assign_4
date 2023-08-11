<%@ page import="com.example.ass_banhang.repo.SanPhamChiTietRepo" %>
<%@ page import="com.example.ass_banhang.repo.impl.SPCTRepoImpl" %><%--
  Created by IntelliJ IDEA.
  User: SoiDiCode
  Date: 6/25/2023
  Time: 9:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
      integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
      crossorigin="anonymous" referrerpolicy="no-referrer" />
<html>
<head>
    <title>
        Bán hàng
    </title>
    <style>
        .customer {

            max-height: 100%;
            background: white;
            overflow: auto;
            scrollbar-width: none;
            -ms-overflow-style: none;
        }

        .customer::-webkit-scrollbar {
            width: 0 !important;
            display: none;
        }

    </style>
</head>
<body>
<div class="row w-100 h-100  position-relative">
    <div class="col-1 float-start position-relative">
        <div class="position-absolute top-0 start-50 translate-middle-x">
            <div class="row" style="height: 50px; margin-bottom: 50px; margin-top: 5px;">
                <div class="col-2 text-center align-content-between pt-1">
                    <img src="https://cdn.vungoi.vn/vungoi/1536329381383_qua_cam_2.png" alt="No-item" height="50px">
                </div>
            </div>
            <div class="row" style="height: 50px; margin-bottom: 20px;">
                <a href="#" class="btn "><i class="fa-solid fa-table-cells-large" style="color: #d24141;"></i></a>
            </div>
            <div class="row" style="height: 50px; margin-bottom: 20px;">
                <a href="/hoa-don/lichsu" class="btn "><i class="fa-solid fa-clock-rotate-left" style="color: #f53246;"></i></a>
            </div>
            <div class="row" style="height: 50px; margin-bottom: 20px;">
                <a href="/hoa-don/listHD" class="btn "><i class="fa-solid fa-file-invoice" style="color: #f83a3a;"></i></a>
            </div>
            <div class="row" style="height: 50px; margin-bottom: 20px;">
                <a href="/hoa-don/thongke" class="btn "><i class="fa-solid fa-calendar-days" style="color: #f23a56;"></i></a>
            </div>
        </div>
        <div class="position-absolute bottom-0 start-50 translate-middle-x">
            <div class="row" style="height: 50px; margin-bottom: 20px;">
                <a href="/user/setting" class="btn "><i class="fa-solid fa-wrench fa-1x" style="color: #eb3d3d;"></i></a>
            </div>
            <div class="row" style="height: 50px; margin-bottom: 20px; ">
                <a href="/user/hoidap" class="btn "><i class="fa-regular fa-message fa-1x" style="color: #d74242;"></i></a>
            </div>
            <div class="row" style="height: 50px; margin-bottom: 20px;">
                <a href="/user/login" class="btn "><i class="fa-solid fa-arrow-right-from-bracket fa-1x"
                                                      style="color: #df3a3a;"></i></a>
            </div>
        </div>
    </div>
    <div>

    </div>

</div>






<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>
</body>
</html>


