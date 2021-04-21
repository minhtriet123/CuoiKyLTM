<%-- 
    Document   : RUD
    Created on : Nov 25, 2020, 12:08:18 PM
    Author     : ADMIN
--%>


<%@page import="java.util.ArrayList"%>
<%@page import="model.bean.Hocsinh"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Table V01</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
       <!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util1.css">
	<link rel="stylesheet" type="text/css" href="css/main1.css">
    </head>
    <body>
        <header>
            <nav>
                <h6 style = "text-align: end;
                    margin-right: 15%;
                    margin-top: 5px;
                    margin-bottom: 5px;">
                    <a href="CheckSession" class="logo">Home</a>
                </h6>
            </nav>
        </header>

        <div class="limiter">

            <div class="container-table100">

                <div>
                    <div><form action="SearchHocsinh" method="GET" class="table100">
                            <input type="text" name="searchBox" id="" placeholder="Tìm theo tên" class="txtb" >
                            
                            <input type="submit" value="Search" class="btn"style=" border: 1px solid;" >
                        </form></div>
                    <div>
                        <form action="ResetHocphi" method="GET" class="table100">
                            <input type="submit" value="Reset Học Phí Tất Cả Học Sinh" class="btn" style="border: 1px solid; margin-left: 77%" onclick="return confirm('Bạn có chắn chắn muốn đặt lại học phí của học sinh?');">
                        </form>
                    </div>
                    <div class="table100">
                        <table>
                            <% ArrayList<Hocsinh> hsArray = (ArrayList<Hocsinh>) request.getAttribute("hsArray"); %>

                            <thead>
                                <tr class="table100-head">
                                    <th class="column1">Họ Tên</th>
                                    <th class="column2">Số điện thoại</th>
                                    <th class="column3">Email</th>
                                    <th class="column4">Ngày Sinh</th>
                                    <th class="column5">Học Phí</th>
                                    <th class="column5">Chỉnh sửa</th>
                                    <th class="column6">Xóa</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%for (Hocsinh hs : hsArray) {%>
                                <tr>
                                    <td class="column1"><%=hs.getTen()%></td>
                                    <td class="column2"><%=hs.getSdt()%></td>
                                    <td class="column3"><%=hs.getEmail()%></td>
                                    <td class="column4"><%=hs.getNgaysinh()%></td>
                                    <td class="column5"><%=hs.getHocphi()%></td>
                                    <td class="column5"><a href="EditHocSinh?idhs=<%=hs.getId()%>">Sửa</a></td>
                                    <td class="column6"><a href="DeleteHocsinh?id=<%=hs.getId()%>" onclick="return confirm('Bạn có chắc chắn muốn xóa?');">Xóa</a></td>
                                </tr>

                                <% }%>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>




        <!--===============================================================================================-->	
        <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/bootstrap/js/popper.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/select2/select2.min.js"></script>
        <!--===============================================================================================-->
        <script src="js/main.js"></script>

    </body>
</html>
