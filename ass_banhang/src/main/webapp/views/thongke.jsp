<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: SoiDiCode
  Date: 7/29/2023
  Time: 1:09 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
<body>
<div class="row w-100 h-100  position-relative">
    <jsp:include page="menu.jsp"/>
    <div class="col-11">
            <h1 class="text-center">Thong ke</h1>
        <div class="row mt-3">
            <div class="col-6 text-center">
                <canvas id="myChart" style="width:100%;max-width:900px"></canvas>
                <span class="text-center fw-bold text-danger">Doanh thu theo thang</span>
            </div>
            <div class="col-6 text-center">
                <canvas id="myChart1" style="width:100%;max-width:900px"></canvas>
                <span class="text-center fw-bold text-danger">So luong san pham ban theo DSP</span>
            </div>
        </div>


        <div class="row row-cols-1 row-cols-md-4 g-4 mt-4">
            <div class="col">
                <div class="card h-100">
                    <div class="card-body">
                        <p class="fw-bold text-center">Tong danh thu nam nay</p>
                        <div class="row ">
                            <i class="fa-solid fa-money-bill-wave h-75 fa-2x"></i>

                            <p class="text-center fs-3"> <fmt:formatNumber type="number" maxFractionDigits="3"  value="${total}" />  VND</p>
                        </div>
                     </div>
                </div>
            </div>
            <div class="col">
                <div class="card h-100">

                    <div class="card-body ">
                        <p class="fw-bold text-center">Quan ly hoa đơn</p>
                        <div class="row">
                            <div class="col-6">
                                <p class="fw-bold text-center">So don thanh toan</p>
                                <p class="text-center">${sizeDTH}</p>
                            </div>
                            <div class="col-6">
                                <p class="fw-bold text-center">So don cho thanh toan</p>
                                <p class="text-center">${sizeCTH}</p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-6">
                                <p class="fw-bold text-center">So don huy</p>
                                <p class="text-center">${sizeHTH}</p>
                            </div>
                            <div class="col-6">
                                <p class="fw-bold text-center">Ty le hoan don</p>
                                <p class="text-center"></p>
                            </div>
                        </div>
                         </div>
                </div>
            </div>
            <div class="col">
                <div class="card h-100">

                    <div class="card-body">
                        <p class="fw-bold text-center">Doanh thu hom nay</p>
                        <div class="row ">
                            <i class="fa-solid fa-money-bill-wave h-75 fa-2x"></i>
                            <p class="text-center fs-3"> <fmt:formatNumber type="number" maxFractionDigits="3"  value="${totalDay}" />  VND</p>
                        </div>
                       </div>
                </div>
            </div>
            <div class="col">
                <div class="card h-100">

                    <div class="card-body">
                        <p class="fw-bold text-center">So don bi huy/ hoan</p>
                      </div>
                </div>
            </div>
        </div>



</div>


<script type="text/javascript">

// function loadThang(id) {
// if (id == ''){
//     document.getElementById("myChart").innerHTML="";
// }
//     const xhttp = new XMLHttpRequest();
//
//     xhttp.onload = function() {
//         var yValues=[];
//         var xValues=[];
//         var barColors=[];
//         if (id == 'tien'){
//          yValues = JSON.parse(this.responseText);
//             for (let i = 0; i < yValues.length; i++) {
//                 barColors[i]="red";
//                 xValues[i] = i+1;
//             }
//             console.log(yValues);
//         }else if(id == 'dongSP'){
//             var list  = JSON.parse(this.responseText);
//             for (let i = 0; i < list.length; i++) {
//                 xValues[i] = list[i].tenDSP;
//                 yValues[i] = list[i].soluong;
//             }
//         }
//
//
//          createChart(xValues,yValues,barColors);
//     }
//     xhttp.open("GET", "http://localhost:8080/hoa-don/doanhthu?dieuKien="+id, true);
//     xhttp.send();
//
// }
//
// function createChart(trucX , trucY , color){
//     new Chart("myChart", {
//         type: "bar",
//         data: {
//             labels: trucX,
//             datasets: [{
//                 backgroundColor: color,
//                 data: trucY
//             }]
//         },
//         options: {
//             legend: {display: false},
//             title: {
//                 display: true,
//                 text: "Doanh thu ban hang"
//             }
//         }
//     });
// }

window.onload = function (){
    fn1();
    fn2();
}

function fn1() {
    const xhttp = new XMLHttpRequest();
    xhttp.onload = function() {
        var yValues=[];
        var xValues=[];
        var barColors=[];

        yValues = JSON.parse(this.responseText);
        for (let i = 0; i < yValues.length; i++) {
            barColors[i]="red";
            xValues[i] = i+1;
        }
        console.log(yValues);



        createChart(xValues,yValues,barColors,"myChart");
    }
    xhttp.open("GET", "http://localhost:8080/hoa-don/doanhthu?dieuKien=tien", true);
    xhttp.send();

}

function fn2() {
    const xhttp = new XMLHttpRequest();
    xhttp.onload = function() {
        var yValues=[];
        var xValues=[];
        var barColors=[];

        var list  = JSON.parse(this.responseText);
            for (let i = 0; i < list.length; i++) {
                xValues[i] = list[i].tenDSP;
                yValues[i] = list[i].soluong;
            }
        console.log(yValues);



        createChart(xValues,yValues,barColors,"myChart1");
    }
    xhttp.open("GET", "http://localhost:8080/hoa-don/doanhthu?dieuKien=dongSP", true);
    xhttp.send();

}

function createChart(trucX , trucY , color , idChart){
    new Chart(idChart, {
        type: "bar",
        data: {
            labels: trucX,
            datasets: [{
                backgroundColor: color,
                data: trucY
            }]
        },
        options: {
            legend: {display: false},
            title: {
                display: true,
                text: "Doanh thu ban hang"
            }
        }
    });
}

</script>

</body>
</html>


