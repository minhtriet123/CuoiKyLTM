<%-- 
    Document   : index
    Created on : Nov 24, 2020, 2:10:06 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="QUẢN LÝ HỌC SINH LỚP HỌC, Kiểm tra thông tin học sinh, Thêm học sinh mới">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>Index</title>
    <link rel="stylesheet" href="css/nicepage_1.css" media="screen">
<link rel="stylesheet" href="css/Index.css" media="screen">
    <meta name="generator" content="Nicepage 2.30.1, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    <link id="u-page-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=PT+Sans:400,400i,700,700i">
    
    <meta property="og:title" content="Index">
    <meta property="og:type" content="website">
    <meta name="theme-color" content="#478ac9">
    <link rel="canonical" href="index.html">
    <meta property="og:url" content="index.html">
  </head>
  <body class="u-body">
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
    <section class="u-align-center u-clearfix u-grey-10 u-section-1" id="carousel_ae2e">
      <div class="u-clearfix u-sheet u-sheet-1">
        
        <h1 class="u-align-center u-custom-font u-font-pt-sans u-text u-text-default u-text-palette-1-base u-text-1">QUẢN LÝ HỌC SINH LỚP HỌC</h1>
        <br>
        <h5 class="u-align-center u-custom-font u-font-pt-sans u-text u-text-2" style="font-size: 2rem;">Xin chào&nbsp;: ${sessionScope.username}</h5>
        <div class="u-list u-repeater u-list-1">
          <div class="u-align-left u-border-2 u-border-palette-5-light-1 u-container-style u-list-item u-opacity u-opacity-60 u-repeater-item u-white u-list-item-1">
            <div class="u-container-layout u-similar-container u-container-layout-1">
              <p class="u-text u-text-2">01</p>
              <h2 class="u-custom-font u-font-pt-sans u-text u-text-3">Kiểm tra thông tin học sinh</h2>
              <p class="u-text u-text-4">Tìm kiếm các học sinh có trong lớp học, xem thông tin, chỉnh sửa thông tin học sinh hoặc xóa học sinh.</p>
              <a href="ListHocsinh" class="u-align-center u-btn u-btn-round u-button-style u-hover-palette-4-light-3 u-palette-1-base u-radius-9 u-btn-1">Kiểm tra</a>
            </div>
          </div>
          <div class="u-align-left u-border-2 u-border-palette-5-light-1 u-container-style u-list-item u-opacity u-opacity-60 u-repeater-item u-video-cover u-white">
            <div class="u-container-layout u-similar-container u-container-layout-2">
              <p class="u-text u-text-5">02</p>
              <h2 class="u-custom-font u-font-pt-sans u-text u-text-6">Thêm học sinh mới</h2>
              <p class="u-text u-text-7">Thêm thông tin học sinh mới vào lớp</p>
              <a href="AddHocSinhController" class="u-align-center u-btn u-btn-round u-button-style u-hover-palette-4-light-3 u-palette-1-base u-radius-9 u-btn-2">Thêm</a>
            </div>
          </div>
        </div>
        <div>
            <a href="LogOut" class="u-border-2 u-border-black u-btn u-button-style u-hover-black u-none u-text-black u-text-hover-white u-btn-3">Log-Out</a>
        </div>
        
      </div>
    </section>
    
    <footer class="u-align-left u-clearfix u-footer u-palette-5-light-1 u-footer" id="sec-45c2"><div class="u-clearfix u-sheet u-sheet-1"></div></footer>
  </body>
</html>
