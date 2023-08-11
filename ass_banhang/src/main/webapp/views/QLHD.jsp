<%@ page import="com.example.ass_banhang.repo.HoaDonRepo" %>
<%@ page import="com.example.ass_banhang.repo.impl.HoaDonRepoImpl" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>

<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
          integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
          crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/MaterialDesign-Webfont/5.3.45/css/materialdesignicons.css"
          integrity="sha256-NAxhqDvtY0l4xn+YVa6WjAcmd94NNfttjNsDmNatFVc=" crossorigin="anonymous" />
    <title>
        TEST
    </title>
    <style>
        body {
            padding-top: 40px;
            /* background: #E6E6FA */
        }

        .card {
            box-shadow: 0 20px 27px 0 rgb(0 0 0 / 5%);
        }

        .avatar-md {
            height: 5rem;
            width: 5rem;
        }

        .fs-19 {
            font-size: 19px;
        }

        .primary-link {
            color: #314047;
            -webkit-transition: all .5s ease;
            transition: all .5s ease;
        }

        a {
            color: #02af74;
            text-decoration: none;
        }

        .bookmark-post .favorite-icon a,
        .job-box.bookmark-post .favorite-icon a {
            background-color: #da3746;
            color: #fff;
            border-color: red;
        }

        .favorite-icon a {
            display: inline-block;
            width: 30px;
            height: 30px;
            font-size: 18px;
            line-height: 30px;
            text-align: center;
            border: 1px solid #eff0f2;
            border-radius: 6px;
            color: rgba(173, 181, 189, .55);
            -webkit-transition: all .5s ease;
            transition: all .5s ease;
        }


        .candidate-list-box .favorite-icon {
            position: absolute;
            right: 22px;
            top: 22px;
        }

        .fs-14 {
            font-size: 14px;
        }

        .bg-soft-secondary {
            background-color: rgba(116, 120, 141, .15) !important;
            color: #74788d !important;
        }

        .mt-1 {
            margin-top: 0.25rem !important;
        }

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


        .btn-customer{
            color: black;
            font-size: 22px;
            float: left;
            padding: 8px 16px;
            text-decoration: none;
        }

        .btn-customer.active{
            background-color: #4CAF50;
            color: white;
        }

        .page a:hover:not(.active){
            background-color: chocolate;
        }
    </style>

</head>

<body>
<div class="row w-100 h-100  position-relative">
    <jsp:include page="menu.jsp"/>

    <div class="col-8 customer">

        <div class="row mb-3">
            <span class="fw-bold fs-4">Hóa đơn bán hàng ${mess}</span>
        </div>
        <form name="frm" method="post" action="/hoa-don/search">
            <div class="row">
                    <div class="col-2">
                        <input type="date" name="ngayBatDau" class="form-control">
                    </div>
                    <div class="col-2">
                        <input type="date" name="ngayKetThuc" class="form-control">
                    </div>
                <div class="col-2">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </div>

            </div>

        </form>
        <c:if test="${listHD.size() == 0}">
            <p class="fs-5 fw-bold">
                Chua co hoa don
            </p>
        </c:if>

        <c:if test="${listHD.size() > 0}">
        <div class="row mt-3">
            <div class="container">
                <table class="table table-striped table-hover">
                    <thead>
                    <tr>
<%--                        <th scope="col">#</th>--%>
                        <th scope="col">Ma</th>
                        <th scope="col">SDT</th>
                        <th scope="col">Ngay Tao</th>
                        <th scope="col">Ngay Thanh Toan</th>
                        <th scope="col">NguoiNhan</th>
                        <th scope="col">Tinh trang</th>
                        <th colspan="2">Chuc nang</th>
                    </tr>
                    </thead>
                    <tbody >
                    <c:forEach items="${listHD}" var="hd" varStatus="loop">
                    <tr>
<%--                        <th scope="row">${loop.count}</th>--%>
                        <td>${hd.ma}</td>
                        <td>${hd.SDT}</td>
                        <td><fmt:formatDate pattern = "yyyy-MM-dd" value = "${hd.ngayTao}" /></td>
                        <td> <fmt:formatDate pattern = "yyyy-MM-dd" value = "${hd.ngayThanhToan}" /></td>
                        <td>${hd.tenNguoiNhan}</td>
                        <td>${hd.tinhTrang == 1? "Da thanh toan":hd.tinhTrang == -1?"Da huy":"Cho thanh toan"}</td>
                        <td colspan="2">
<%--                            <span>--%>
<%--                              <c:if test="${hd.tinhTrang == -1}">--%>
<%--                                  <button class="btn btn-outline-danger">Mua lai</button>--%>
<%--                              </c:if>--%>
                                <button onclick="loadSP('${hd.id}')" class="btn btn-outline-primary">
                                    Detail
                                </button>
<%--                            </span>--%>
                        </td>
                    </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
            <div class="row">
                <div class="page" >
                    <c:forEach begin="1" end="${num}" var="soTrang">
                        <a href="/hoa-don/phantrang?page=${soTrang}" class="btn btn-customer
                    ${soTrang == page?"active":""}
                    ">${soTrang}</a>
                    </c:forEach>
                </div>
            </div>

        </c:if>
    </div>

    <div class="col-3 float-end">

        <div class="h-50 row customer" style="overflow-y: scroll;">

            <span class="fw-bold fs-4">Detail Items</span>
            <div id="loadSPHD">


            </div>
        </div>
        <div class="h-50 row">
            <div class=" h-50 ">
                <div class="row mt-2">
                    <div class="col-6">
                        <span>Items</span>
                    </div>
                    <div class="col-6 text-end">
                        <span class="fs-5 fw-bold" id="soLuongSP">0</span>
                    </div>
                </div>

                <div class="row" style="margin-top: 5px;">
                    <div class="col-6">
                        <span>VAT</span>
                    </div>
                    <div class="col-6 text-end">
                        <span class="fs-5 fw-bold">0</span>
                    </div>
                </div>
                <div class="row " style="margin-top: 5px; margin-bottom: 10px;">
                    <div class="col-6">
                        <span>Chiet khau</span>
                    </div>
                    <div class="col-6 text-end">
                        <span class="fs-5 fw-bold">0</span>
                    </div>
                </div>

                <div class="row " style="border-top: 1px solid #000; border-bottom: 1px solid #000; ">
                    <div class="col-6 p-3">
                        <span class="fs-6 fw-bold">Tong tien</span>
                    </div>
                    <div class="col-6 text-end p-3">
                        <span class="fs-6 fw-bold" id="total">0</span>
                    </div>
                </div>

            </div>
            <div class="h-50  position-relative mt-2">
                <p class="fs-6 fw-bold"> Method</p>
                <div class="row rows-col-3 g-3 mt-1">
                    <div class="col text-center">
                        <button class="btn btn-outline-danger " style="width: 100px ; height: 60px;">
                            <i class="fa-solid fa-money-bill-wave"></i>
                            <br>
                            <span>Mua lại</span>
                        </button>
                    </div>

                </div>


            </div>
        </div>

    </div>

</div>



<script>
    function loadSP(idHD) {
        const xhttp = new XMLHttpRequest();
        xhttp.onload = function() {
            var listSPHD = JSON.parse(this.responseText);
            loopSP(listSPHD);
        }
        xhttp.open("GET", "http://localhost:8080//sanpham/CTSP?idHD="+idHD, true);
        xhttp.send();
    }

    function loopSP(listSPHD){
        var size = listSPHD.length;
        let chuoi="";
        var gia = 0;
        for (let i = 0; i < size ; i++) {
            var id = listSPHD[i].IdChiTietSP.id +"";
            chuoi +="" + "            <div class=\"card mb-3 border-0\" style=\"max-width: 540px;\">\n" +
                "                <div class=\"row g-0\">\n" +
                "                    <div class=\"col-md-4\">\n" +
                "                        <img src=\""+ listSPHD[i].IdChiTietSP.imgUrl+"\"\n" +
                "                             class=\"img-fluid rounded-start\" alt=\"...\" style=\"width: 100%;height: 128px;\">\n" +
                "                    </div>\n" +
                "                    <div class=\"col-md-8\">\n" +
                "                        <div class=\"card-body\">\n" +
                "                            <h5 class=\"card-title ms-0\" style='font-size: 12px;'>"+listSPHD[i].IdChiTietSP.sanPham.Ten+"</h5>\n" +
                "<div class=\"row\">"+
                "<p class=\"card-text col-6\">"+listSPHD[i].IdChiTietSP.dongSP.Ten+"</p>"+
                "</div>" +
                "                            <div class=\"row\">\n" +
                "                                <div class=\"col-7\">\n" +
                "                                    <div class=\"row\">\n" +
                "                                        <input class=\"form-control\" style='width: 30%!important;' name=\"sl\" type=\"text\" value='"+listSPHD[i].soLuong+"'/>\n" +
                "                                    </div>\n" +
                "                                </div>\n" +
                "\n" +
                "                                <div class=\"col-5 text-start\">\n" +
                "                                    <span class=\"text-danger fw-bold\">"+listSPHD[i].donGia+".đ</span>\n" +
                "                                </div>\n" +
                "                            </div>\n" +
                "\n" +
                "                        </div>\n" +
                "                    </div>\n" +
                "                </div>\n" +
                "            </div>\n"
            gia+=listSPHD[i].donGia*listSPHD[i].soLuong;

        }

        document.getElementById("loadSPHD").innerHTML = chuoi;
        document.getElementById("total").innerHTML = gia ;
        document.getElementById("soLuongSP").innerHTML = size ;
    }
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>
</body>

</html>
