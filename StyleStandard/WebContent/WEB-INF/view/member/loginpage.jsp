<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../header.jsp"%>

<!DOCTYPE html>
<html lang="zxx">

<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Offcanvas Menu Begin -->
	<div class="offcanvas__menu__overlay"></div>
	<div class="offcanvas__menu__wrapper">
		<div class="canvas__close">
			<span class="fa fa-times-circle-o"></span>
		</div>
		<div class="offcanvas__logo">
			<a href="../index"><img src="../../../resource/img/logo.png" alt=""></a>
		</div>
		<nav class="offcanvas__menu mobile-menu">
			<ul>
				<li><a href="../index">메인페이지</a></li>
				<li><a href="#">STORE</a>
					<ul class="dropdown">
						<li><a href="../style/style_woman">여성</a></li>
						<li><a href="../style/style_men">남성</a></li>
					</ul></li>
				<li><a href="#">고객센터</a>
					<ul class="dropdown">
						<li><a href="../notice">공지사항</a></li>
						 <li><a href="../customerService/customerFAQ">FAQ</a></li>
						
					</ul></li>
				<li><a href="../member/mypage.jsp">마이페이지</a></li>
			</ul>
		</nav>
		<div id="mobile-menu-wrap"></div>
		<div class="offcanvas__auth">
			<%
				if ((String) session.getAttribute("id") == null) {
			%>
			<a href="../member/loginpage.jsp" id="login" style="color: white"><span
				class="fa fa-user"></span>로그인 / 회원가입</a>
			<%
				} else {
			%>
			<div class="btn-group" role="group" id="btn_logout">
				<button id="btnGroupDrop1" type="button"
					class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown"
					aria-expanded="false">
					<c:out value="${sessionScope.name}" />
					님 로그인중...
				</button>
				<ul class="dropdown-menu" aria-labelledby="btnGroupDrop1">
					<li><a class="dropdown-item" href="../member/logout"
						style="color: black">로그아웃</a></li>
				</ul>
			</div>
			<%
				}
			%>
		</div>

	</div>
	<!-- Offcanvas Menu End -->

	<!-- Header Section Begin -->
	<header class="header-section header-normal">
		<div class="header__info">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 col-md-6">
						<div class="header__info-left"></div>
					</div>
					<div class="col-lg-6 col-md-6">
						<div class="header__info-right">
							<%
								if ((String) session.getAttribute("id") == null) {
							%>
							<a href="../member/loginpage.jsp" id="login" style="color: white"><span
								class="fa fa-user"></span>로그인 / 회원가입</a>
							<%
								} else {
							%>
							<div class="btn-group" role="group" id="btn_logout">
								<button id="btnGroupDrop1" type="button"
									class="btn btn-primary dropdown-toggle"
									data-bs-toggle="dropdown" aria-expanded="false">
									<c:out value="${sessionScope.name}" />
									님 로그인중...
								</button>
								<ul class="dropdown-menu" aria-labelledby="btnGroupDrop1">
									<li><a class="dropdown-item" href="../member/logout"
										style="color: black">로그아웃</a></li>
								</ul>
							</div>
							<%
								}
							%>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-3">
					<div class="header__logo">
						<a href="../index"><img
							src="../../../resource/img/logo.png" alt=""></a>
					</div>
				</div>
				<div class="col-lg-9 col-md-9">
					<nav class="header__menu">
						<ul>
							<li><a href="../index">메인페이지</a></li>
							<li><a href="#">STORE</a>
								<ul class="dropdown">
									<li><a href="../style/style_woman">여성</a></li>
									<li><a href="../style/style_men">남성</a></li>
								</ul></li>
							<li><a href="#">고객센터</a>
								<ul class="dropdown">
									<li><a href="../notice">공지사항</a></li>
									 <li><a href="../customerService/customerFAQ">FAQ</a></li>
								</ul></li>
							<li><a href="../member/mypage.jsp">마이페이지</a></li>
						</ul>
					</nav>
				</div>
			</div>
			<div class="canvas__open">
				<span class="fa fa-bars"></span>
			</div>
		</div>
	</header>
	<!-- Header End -->

	
    <!-- Breadcrumb Begin -->
    <div class="breadcrumb-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__option">
                        <a href="./index.jsp"><span class="fa fa-home"></span> Home</a>
                        <span>회원가입</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->





    <section class="pricing-section spad" style="padding-top: 60px;">
        <div class="container">
            <h3 style="margin-bottom: 20px;">로그인</h3>
            
           <form action="/member/loginDispatch" method="post" id="join">
               <div class="row row-cols-2" style="margin-left:10px">
               	<div class="col-6" >
                  <div class="mb-3" >
                      <label for="formGroupExampleInput" class="form-label">아이디</label>
                      <input type="text" class="form-control" name="id" id="id" placeholder="아이디" style="width:60%;align-text:center" required/>
                    <span id="idCheck"></span>
                    </div>
                    <div class="mb-3">
                      <label for="formGroupExampleInput2" class="form-label">비밀번호</label>
                      <input type="password" class="form-control" name="pw" id="pw" placeholder="비밀번호" style="width:60%;align-text:center" required/>
                      <span id="pw_confirm" class="valid_info"></span>
                    </div>
                       <div class="btn_center" style="text-align: center;">
                <input type="submit" class="btn btn-primary" data-toggle="modal" id="btn_comp" data-target="#myModal" value="로그인">
               <a href="../index" class="btn btn-primary" style="background-color:white;color:#ff9999">취소</a>
            </div>
                                </div>
                                <div class="col">
                                <div class="card-body">
										<ul>
											<li>아직 회원이 아니신가요?</li>
											<li>회원가입을 통해 스타일리스트의 다양한 혜택을 누려보세요!</li>
										</ul>
									</div>
                                <div class="join_login" style="text-align:center">
                <a href="../member/memberjoin.jsp" class="primary-btn">회원가입</a>
            </div>
                      </div>
                      </div>
            </form>
 
        </div>
    </section>
  <!-- Footer 동묵-->
  <footer class="footer-section">
    <div class="footer__text set-bg" data-setbg="../resource/img/hero/homebackground.png">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-12 col-sm-12">
                    <div class="footer__text-about">
                        <div class="footer__logo">
                            <a href="../index/index.jsp"><img src="../resource/img/logo.png" alt=""></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 col-md-12 col-sm-6">
                    <div class="footer__text-widget">
                        <h5>Company</h5>
                        <ul>
                            <li><a href="#">Company</a></li>
                            <li><a href="#">About Us</a></li>
                            <li><a href="#">Press & Media</a></li>
                            <li><a href="#">News / Blogs</a></li>
                            <li><a href="#">Careers</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12 col-sm-12">
                    <div class="footer__text-widget">
                        <h5>CONTACT US</h5>
                        <ul class="footer__widget-info">
                            <li><span class="fa fa-map-marker"></span> 서울특별시 강남구 테헤란로 10길 9 그랑프리 빌딩<br />
                                </li>
                            <li><span class="fa fa-mobile"></span> 02-000-000 | 010-123-4567</li>
                            <li><span class="fa fa-headphones"></span> stylestandard@email.com</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-2 col-md-12 col-sm-6">
                    <div class="footer__text-widget">
                        <span class="footer__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                        </span>
                    </div>
                </div>
            </div>
            <div class="footer__text-copyright">
                <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | Korea Style Copyright Association. All rights reserved. </a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
            </div>
        </div>
    </div>
</footer>
<!-- Footer 동묵 끝 -->
    <script src="../resource/js/main.js"></script>
</body>

</html>