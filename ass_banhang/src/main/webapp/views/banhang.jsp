<%@ page import="com.example.ass_banhang.repo.SanPhamChiTietRepo" %>
<%@ page import="com.example.ass_banhang.repo.impl.SPCTRepoImpl" %>
<%@ page import="com.example.ass_banhang.models.HoaDon" %><%--
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
   <jsp:include page="menu.jsp"/>

    <div class="col-8  customer" style=" overflow-y: scroll; margin-top: 5px;">

        <div class="row">
            <div class="col-6 ms-1">
                <form class="d-flex" role="search">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
            </div>

            <div class="col-2  text-end mt-1">
                <button class="btn btn-outline-info">
                    <i class="fa fa-user"></i>
                </button>
            </div>

            <div class="col-3  text-end mt-1">
                <button type="button" class="btn btn-outline-success" data-bs-toggle="modal" data-bs-target="#exampleModal" >
                   Tạo hóa đơn
                </button>
            </div>
        </div>

        <div class="row" style="background-color: #dbd8cb;
                            background-color: #e3e3e1;
                            border-radius: 7px;
                            border-right: 0.5px solid #b2a8a8;
                            border-left: 0.5px solid #b2a8a8;">
            <span class="fw-bold fs-4 mt-3 mb-3">Categories</span>
            <%
                SanPhamChiTietRepo repo = new SPCTRepoImpl();
                request.setAttribute("repo",repo);
            %>
            <div class="row row-cols-1 row-cols-md-6 g-4 mb-3">
                <a href="/ban-hang/DSP?ma=all" class="btn">
                <div class="col">
                    <div class="card h-100">
                        <img src="https://cdn4.vectorstock.com/i/1000x1000/13/78/menu-icon-vector-21641378.jpg"
                             class="card-img-top h-50" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">All Menu</h5>
                            <p class="card-text fw-bold">${repo.getAll().size()} Item</p>
                        </div>
                    </div>
                </div>
                </a>
            <c:forEach items="${listDSP}" var="dsp">
                <a href="/ban-hang/DSP?ma=${dsp.ma}" class="btn">
                <div class="col">
                    <div class="card h-100">
                        <img src="${repo.getSPByDongSP(dsp.ma)[0].imgUrl}"
                             class="card-img-top h-50" alt="...">
                        <div class="card-body">
                            <h5 class="card-title"> ${dsp.ten}</h5>
                            <p class="card-text fw-bold">${repo.getSPByDongSP(dsp.ma).size()} Item</p>
                        </div>
                    </div>
                </div>
                </a>
                </c:forEach>
            </div>

            <span class="fw-bold fs-4 mt-3 mb-3">Select Menu</span>

            <div class="row row-cols-1 row-cols-4 g-4 ">
                <c:forEach items="${listSP}" var="sp">

                <div class="col " style="height: 450px ; cursor: pointer" onclick="addHDSP('${sp.id}')" >
                    <div class="card h-100">
                        <img src="${sp.imgUrl}"
                             class="card-img-top " alt="..." style="height: 250px;">
                        <div class="card-body">
                            <span class="fw-bold fs-6" >${sp.sanPham.getTen()}</span>
                            <p class="card-text" style="font-size: 10px">${sp.soLuongTon} Avaiable </p>
                            <p class="card-text">
<%--                                <del>$26.20</del> --%>
                                <span class="fw-bold fs-6">$${sp.giaBan}</span><span>/Porton</span>
                            </p>
                        </div>
                    </div>
                </div>
                    </a>
                </c:forEach>
            </div>
        </div>
    </div>

    <div class="col-3 float-end">
        <%
            HoaDon hoaDon = (HoaDon) request.getSession().getAttribute("hd");
            request.setAttribute("hoaDon",hoaDon);
        %>

        <div class="h-50 row customer" style="overflow-y: scroll;">
            <div class="row mb-1">
               <div class="col-5">
                   <span class="fw-bold fs-5">Detail Items</span>
               </div>
                <div class="col-6">
                    <c:if test="${hoaDon != null}">
                <select class="form-select" aria-label="Default select example" id="maHD" >
                    <option value="all">List HD</option>
                <c:forEach items="${listHD}" var="hd" varStatus="loop">
                    <c:if test="${hd.tinhTrang == 0}">
                        <option value="${hd.id}" ${hd.ma == hoaDon.ma?"selected":""} >${hd.ma}</option>
                    </c:if>

                </c:forEach>
                </select>
                    </c:if>

                    <c:if test="${hoaDon == null}">
                        <select class="form-select" aria-label="Default select example" id="maHD">
                            <option value="all">List HD</option>
                            <c:forEach items="${listHD}" var="hd" varStatus="loop">
                                <c:if test="${hd.tinhTrang == 0}">
                                <option value="${hd.id}"  >${hd.ma}</option>
                                </c:if>
                            </c:forEach>
                        </select>
                    </c:if>
                </div>
            </div>


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
<%--            <div class="h-50  position-relative mt-4">--%>
<%--                <p class="fs-6 fw-bold">Pay Method</p>--%>
<%--                <div class="row rows-col-3 g-3 mt-1">--%>
<%--                    <div class="col text-center">--%>
<%--                        <button class="btn btn-outline-danger " style="width: 100px ; height: 60px;">--%>
<%--                            <i class="fa-solid fa-money-bill-wave"></i>--%>
<%--                            <br>--%>
<%--                            <span>Cash</span>--%>
<%--                        </button>--%>
<%--                    </div>--%>
<%--                    <div class="col text-center">--%>
<%--                        <button class="btn btn-outline-danger" style="width: 100px ; height: 60px;">--%>
<%--                            <i class="fa-solid fa-wallet"></i>--%>
<%--                            <br>--%>
<%--                            <span> Debuts</span>--%>
<%--                        </button>--%>
<%--                    </div>--%>
<%--                    <div class="col text-center">--%>
<%--                        <button class="btn btn-outline-danger" style="width: 100px ; height: 60px;">--%>
<%--                            <i class="fa-solid fa-qrcode"></i>--%>
<%--                            <br>--%>
<%--                            <span>QRcode</span>--%>
<%--                        </button>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            <div class="h-50  position-relative mt-4">&ndash;%&gt;--%>
<%--            <div class="row mt-3">--%>
<%--                <label >Tien khach đưa</label>--%>
<%--                <input type="number" id="tienKhach" class="form-control">--%>
<%--            </div>--%>
            <div class="row mt-3 mb-3 text-center">
                <p class="text-danger" id="err">${messErr}</p>
            </div>
                    <div class="row position-relative ">
                        <div class="col-4 offset-4">
                            <a href="/ban-hang/thanhtoan" class="btn btn-danger  position-absolute bottom-0 start-50 translate-middle-x mb-3">
                                Thanh toan
                            </a>
                        </div>

                    </div>

<%--            </div>--%>
        </div>

    </div>

</div>



<!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">Modal title</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">


                <form method="post" action="/hoa-don/createHD">
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Tên người nhận</label>
                        <input type="text" class="form-control" id="exampleInputEmail1" name="tenNguoiNhan" >
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputPassword1" class="form-label">Địa chỉ</label>
                        <input type="text" class="form-control" id="exampleInputPassword1" name="diaChi">
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputPassword2" class="form-label">SDT</label>
                        <input type="text" class="form-control" id="exampleInputPassword2" name="SDT">
                    </div>
                    <button type="submit" class="btn btn-primary">Create HD</button>
                </form>
            </div>

        </div>
    </div>
</div>





<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>

<script type="text/javascript" >
  window.onload = function (){
      var maHD =  document.getElementById("maHD");
      if (maHD.value == 'all') return;
      const xhttp = new XMLHttpRequest();
      xhttp.onload = function() {
          var listSPHD = JSON.parse(this.responseText);
          console.log(listSPHD);
          loopSP(listSPHD);
      }
      xhttp.open("GET", "http://localhost:8080//sanpham/CTSP?idHD="+maHD.value, true);
      xhttp.send();
  }

        var maHD =  document.getElementById("maHD");
        maHD.addEventListener("change",function (){
            if (maHD.value == 'all') return;
            const xhttp = new XMLHttpRequest();
            xhttp.onload = function() {
                var listSPHD = JSON.parse(this.responseText);
                console.log(listSPHD);
                loopSP(listSPHD);

            }
            xhttp.open("GET", "http://localhost:8080/sanpham/CTSP?idHD="+maHD.value, true);
            xhttp.send();
        });

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
                    "<button onclick=\"removeItem('"+id+"')\" class=\"btn col-6\"><i class=\"fa-solid fa-trash\" style=\"color: #941010;\"></i></button>"+
                    "</div>" +
                    "                            <div class=\"row\">\n" +
                    "                                <div class=\"col-7\">\n" +
                    "                                    <div class=\"row\">\n" +
                    "                                        <button class=\"btn btn-outline-danger w-25\" onclick=\"down('"+id+"')\"  >-</button>\n" +
                    "                                        <input class=\"form-control\" style='width: 30%!important;' id=\"quantity"+id+"\" name=\"sl\" type=\"text\" value='"+listSPHD[i].soLuong+"'/>\n" +
                    "                                        <button class=\"btn btn-outline-danger w-25\" onclick=\"up('"+id+"')\" >+</button>\n" +
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




   function addHDSP(id) {
       const xhttp = new XMLHttpRequest();
       document.getElementById("err").innerHTML ="";
       xhttp.onload = function() {
           var listSPHD = JSON.parse(this.responseText);
           if (listSPHD == 1){
               alert("Ban phải tạo tạo hóa hoặc chọn hóa đơn để thêm sp!!");
           }else {
             loopSP(listSPHD);
           }
       }
       xhttp.open("GET", "http://localhost:8080/ban-hang/addHDSP?idctsp="+id, true);
       xhttp.send();
   }

   function removeItem(idSPCT){
       const xhttp = new XMLHttpRequest();
       document.getElementById("err").innerHTML ="";
       xhttp.onload = function() {
           var listSPHD = JSON.parse(this.responseText);

               loopSP(listSPHD);

       }
       xhttp.open("GET", "http://localhost:8080/ban-hang/remove?idctsp="+idSPCT, true);
       xhttp.send();
   }



  var totalship = 0;
  function down(id){
      let quantity = document.getElementById("quantity"+id);

      if (quantity.value <= 1) return;
      const xhttp = new XMLHttpRequest();
      xhttp.onload = function() {
          var listSPHD = JSON.parse(this.responseText);
          loopSP(listSPHD);
      }
      xhttp.open("GET", "http://localhost:8080/ban-hang/editQuantity?num=-1&"+"id="+id, true);

      xhttp.send();
  }

  function up(id){
      console.log(id);
      const xhttp = new XMLHttpRequest();
      xhttp.onload = function() {
          var listSPHD = JSON.parse(this.responseText);
          console.log(listSPHD);
          loopSP(listSPHD);
      }
      xhttp.open("GET", "http://localhost:8080/ban-hang/editQuantity?num=1&"+"id="+id, true);
      xhttp.send();
  }






</script>
</body>
</html>
