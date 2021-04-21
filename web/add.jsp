<%-- 
    Document   : add1
    Created on : Nov 28, 2020, 6:46:56 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="Thêm học sinh">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>Page 1</title>
    <link rel="stylesheet" href="css/nicepage_1.css" media="screen">
<link rel="stylesheet" href="css/add.css" media="screen">
    <meta name="generator" content="Nicepage 2.30.1, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    
    
    <meta property="og:title" content="Page 1">
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
    <section class="u-clearfix u-gradient u-section-1" id="sec-f293">
      <div class="u-clearfix u-sheet u-sheet-1">
        <h2 class="u-text u-text-body-alt-color u-text-default u-text-1">Thêm học sinh</h2>
        <div class="u-shape u-shape-svg u-text-palette-1-base u-shape-1">
          <svg class="u-svg-link" preserveAspectRatio="none" viewBox="0 0 140 160" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-f40c"></use></svg>
          <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 0 140 160" x="0px" y="0px" id="svg-f40c"><path d="M30,51.7L79.5,80L30,108.3V51.7 M0,0v160l140-80L0,0L0,0z"></path></svg>
        </div>
        <div class="u-shape u-shape-svg u-text-palette-1-base u-shape-2">
          <svg class="u-svg-link" preserveAspectRatio="none" viewBox="0 0 160 120" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-3acc"></use></svg>
          <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 0 160 120" x="0px" y="0px" id="svg-3acc"><path d="M124.3,80.3c20.5-1.1,32-18.4,34.8-31.5c4.7-22.6-6.7-55.4-81.5-47.7c-124.8,12.7-75.1,145.7-16.9,114
	C99.9,93.7,86.4,82.3,124.3,80.3z"></path></svg>
        </div>
        <div class="u-align-center u-form u-form-1">
          <form action="AddHocsinh" method="POST" class="u-clearfix u-form-spacing-10 u-form-vertical u-inner-form" style="padding: 10px" source="custom" name="form">
            <div class="u-form-group u-form-name u-form-group-1">
              <label for="name-3b9a" class="u-label">Họ tên:</label>
              <input type="text" placeholder="Nhập họ tên" id="name-3b9a" name="name" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required="">
            </div>
            <div class="u-form-group u-form-phone u-form-group-2">
              <label for="phone-2be6" class="u-label">Số điện thoại:</label>
              <input type="tel" pattern="\+?\d{0,2}[\s\(\-]?([0-9]{3})[\s\)\-]?([\s\-]?)([0-9]{3})[\s\-]?([0-9]{2})[\s\-]?([0-9]{2})" placeholder="Nhập số điện thoại (e.g. 0382155642)" id="phone-2be6" name="phone" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required="">
            </div>
            <div class="u-form-email u-form-group u-form-group-3">
              <label for="email-3b9a" class="u-label">Email:</label>
              <input type="email" placeholder="Nhập Email" id="email-3b9a" name="email" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required="">
            </div>
            <div class="u-form-date u-form-group u-form-group-4">
              <label for="date-1db7" class="u-label">Ngày sinh:</label>
              <input type="date" id="date-1db7" name="birthday" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required="">
            </div>
            <div class="u-form-address u-form-group u-form-group-5">
              <label for="address-140f" class="u-label">Địa chỉ:</label>
              <input type="text" placeholder="Nhập địa chỉ" id="address-140f" name="address" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required="">
            </div>
            <div class="u-form-group u-form-radiobutton u-form-group-6">
              <div class="u-form-radio-button-wrapper">
                <input type="radio" name="hocphi" value="Đã Nộp">
                <label class="u-label" for="hocphi">Đã Nộp Học Phí</label>
                <br>
                <input type="radio" name="hocphi" value="Chưa Nộp">
                <label class="u-label" for="hocphi">Chưa Nộp Học Phí</label>
                <br>
              </div>
            </div>
            <div class="u-align-right u-form-group u-form-submit u-form-group-7">
              
              <input type="submit" value="Thêm" class="u-btn u-btn-submit u-button-style">
            </div>
            <div class="u-form-send-message u-form-send-success"> Thank you! Your message has been sent. </div>
            <div class="u-form-send-error u-form-send-message"> Unable to send your message. Please fix errors then try again. </div>
            <input type="hidden" value="" name="recaptchaResponse">
          </form>
        </div>
        <div class="u-shape u-shape-svg u-text-palette-1-base u-shape-3">
          <svg class="u-svg-link" preserveAspectRatio="none" viewBox="0 0 140 160" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-f40c"></use></svg>
          <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 0 140 160" x="0px" y="0px" id="svg-f40c"><path d="M30,51.7L79.5,80L30,108.3V51.7 M0,0v160l140-80L0,0L0,0z"></path></svg>
        </div>
        <div class="u-shape u-shape-svg u-text-palette-1-base u-shape-4">
          <svg class="u-svg-link" preserveAspectRatio="none" viewBox="0 0 140 160" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-f40c"></use></svg>
          <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 0 140 160" x="0px" y="0px" id="svg-f40c"><path d="M30,51.7L79.5,80L30,108.3V51.7 M0,0v160l140-80L0,0L0,0z"></path></svg>
        </div>
        <div class="u-shape u-shape-svg u-text-palette-1-base u-shape-5">
          <svg class="u-svg-link" preserveAspectRatio="none" viewBox="0 0 160 140" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-b071"></use></svg>
          <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 0 160 140" x="0px" y="0px" id="svg-b071"><path d="M80,60.5l28.3,49.5H51.7L80,60.5 M80,0L0,140h160L80,0L80,0z"></path></svg>
        </div>
        <div class="u-shape u-shape-svg u-text-palette-1-base u-shape-6">
          <svg class="u-svg-link" preserveAspectRatio="none" viewBox="0 0 160 140" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-b071"></use></svg>
          <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 0 160 140" x="0px" y="0px" id="svg-b071"><path d="M80,60.5l28.3,49.5H51.7L80,60.5 M80,0L0,140h160L80,0L80,0z"></path></svg>
        </div>
        <div class="u-shape u-shape-svg u-text-palette-1-base u-shape-7">
          <svg class="u-svg-link" preserveAspectRatio="none" viewBox="0 0 140 160" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-f40c"></use></svg>
          <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 0 140 160" x="0px" y="0px" id="svg-f40c"><path d="M30,51.7L79.5,80L30,108.3V51.7 M0,0v160l140-80L0,0L0,0z"></path></svg>
        </div>
        <div class="u-shape u-shape-svg u-text-palette-1-base u-shape-8">
          <svg class="u-svg-link" preserveAspectRatio="none" viewBox="0 0 140 160" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-f40c"></use></svg>
          <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 0 140 160" x="0px" y="0px" id="svg-f40c"><path d="M30,51.7L79.5,80L30,108.3V51.7 M0,0v160l140-80L0,0L0,0z"></path></svg>
        </div>
        <div class="u-shape u-shape-svg u-text-palette-1-base u-shape-9">
          <svg class="u-svg-link" preserveAspectRatio="none" viewBox="0 0 140 160" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-f40c"></use></svg>
          <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 0 140 160" x="0px" y="0px" id="svg-f40c"><path d="M30,51.7L79.5,80L30,108.3V51.7 M0,0v160l140-80L0,0L0,0z"></path></svg>
        </div>
        <div class="u-shape u-shape-svg u-text-palette-1-base u-shape-10">
          <svg class="u-svg-link" preserveAspectRatio="none" viewBox="0 0 160 140" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-b071"></use></svg>
          <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 0 160 140" x="0px" y="0px" id="svg-b071"><path d="M80,60.5l28.3,49.5H51.7L80,60.5 M80,0L0,140h160L80,0L80,0z"></path></svg>
        </div>
      </div>
    </section>
    
    
    <footer class="u-align-center u-clearfix u-footer u-palette-5-light-1 u-footer" id="sec-b474"><div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
        <p class="u-small-text u-text u-text-variant u-text-1">Chúc Bạn Một Ngày Tốt Lành~!</p>
      </div></footer>

  
  </body>
</html>
