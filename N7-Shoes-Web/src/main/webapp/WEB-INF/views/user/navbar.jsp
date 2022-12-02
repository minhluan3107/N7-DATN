<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- Topbar Start -->
	
		<div class="row align-items-center bg-light py-3 px-xl-5 d-none d-lg-flex">
		
			<div style="margin-left: 20px" class="col-lg-3">
			<a href=""><img
					src="/user/img/logo2.jpg" width="25%"></a>
			</div>
			<div style="margin-left: -220px" class="col-lg-3">
				<a href="/index" class="text-decoration-none"> <span style="color: white;"
					class="h1 text-uppercase text-primary bg-dark px-2">N7</span> <span style="color: black; background: white;"
					class="h1 text-uppercase text-dark bg-primary px-2 ml-n1">SHOES</span>
				</a>
			</div>
			<div style="margin-left: 450px" class="col-lg-3">
				<form action="">
					<div class="input-group">
						<input type="text" class="form-control" placeholder="Tìm kiếm">
						<div class="input-group-append">
							<button class="input-group-text bg-transparent text-primary">
								<i class="fa fa-search"></i>
							</button>
						</div>
					</div>
				</form>
			</div>
			
		</div>

	<!-- Topbar End -->


	<!-- Navbar Start -->
	<div class="container-fluid bg-dark mb-30">
		<div class="row px-xl-5">
			
			<div class="col-lg-10">
				<nav
					class="navbar navbar-expand-lg bg-dark navbar-dark py-3 py-lg-0 px-0">
					<a href="" class="text-decoration-none d-block d-lg-none"> <span style="color: white;"
					class="h1 text-uppercase text-primary bg-dark px-2">N7</span> <span style="color: black; background: white;"
					class="h1 text-uppercase text-dark bg-primary px-2 ml-n1">SHOES</span>
					</a>
					<button type="button" class="navbar-toggler" data-toggle="collapse"
						data-target="#navbarCollapse">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse justify-content-between"
						id="navbarCollapse">
						<div class="navbar-nav mr-auto py-0">
							<a sty href="/index" class="nav-item nav-link active">Trang
								chủ</a> <a href="contact.html" class="nav-item nav-link">Giới Thiệu</a> <a
								href="contact.html" class="nav-item nav-link">Liên hệ</a>
							
							<security:authorize access="!isAuthenticated()">
								<div class="nav-item dropdown">
									<a href="#" class="nav-link dropdown-toggle"
										data-toggle="dropdown">Tài khoản <i
										class="fa fa-angle-down mt-1"></i></a>
									<div class="dropdown-menu bg-primary rounded-0 border-0 m-0">
										<a href="/login" class="dropdown-item">Đăng nhập</a> <a
											href="/register" class="dropdown-item">Đăng ký</a>
									</div>
								</div>
							</security:authorize>
							<security:authorize access="isAuthenticated()">
								<div class="nav-item dropdown">
									<a href="#" class="nav-link dropdown-toggle"
										data-toggle="dropdown">Tài khoản <i
										class="fa fa-angle-down mt-1"></i></a>
									<div class="dropdown-menu bg-primary rounded-0 border-0 m-0">
										<a href="/shop/profile/order" class="dropdown-item">Thông tin</a> <a
											href="/logout" class="dropdown-item">Đăng xuất</a>
									</div>
								</div>
							</security:authorize>

							<security:authorize access="hasRole('ROLE_ADMIN')">  
 								<a href="/admin/index" class="nav-item nav-link">Quản lý</a>
							</security:authorize>
						</div>

						<div class="navbar-nav ml-auto py-0 d-none d-lg-block">
							<a href="/shop/profile/favorite" class="btn px-0"> <i
								class="fas fa-heart text-primary"></i> <span
								class="badge text-secondary border border-secondary rounded-circle"
								style="padding-bottom: 2px;">${sessionScope.countFavorite} ${sessionScope.countFavorite==null?'0':''}</span>
							</a> <a href="/shop/cart" class="btn px-0 ml-3"> <i
								class="fas fa-shopping-cart text-primary"></i> <span
								class="badge text-secondary border border-secondary rounded-circle"
								style="padding-bottom: 2px;">${sessionScope.countProduct} ${sessionScope.countProduct==null?'0':''}</span>
							</a>
						</div>
					</div>
				</nav>
			</div>
			<div  class="col-lg-2 d-none d-lg-block">
				<a 
					class="btn d-flex align-items-center justify-content-between bg-primary w-100"
					data-toggle="collapse" href="#navbar-vertical"
					style="height: 65px; padding: 0 30px;">
					<h6 class="text-dark m-0">
						<i class="fa fa-bars mr-2"></i>SẢN PHẨM
					</h6> <i class="fa fa-angle-down text-dark"></i>
				</a>
				<nav
					class="collapse position-absolute navbar navbar-vertical navbar-light align-items-start p-0 bg-light"
					id="navbar-vertical"
					style="width: calc(100% - 30px); z-index: 999;">
					<div class="navbar-nav w-100">						
						<c:forEach var="item" items="${procate}">
							<a href="" class="nav-item nav-link">${item.group.name}</a>
						</c:forEach>						
					</div>
				</nav>
			</div>
		</div>
	</div>
	<!-- Navbar End -->
</body>
</html>