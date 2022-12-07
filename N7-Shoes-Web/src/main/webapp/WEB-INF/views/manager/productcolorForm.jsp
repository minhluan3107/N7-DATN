<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="/user/img/logo4.png" type="image/png">
<title>N7-Shoes Xin Chào Quản Lý!</title>
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<link rel="stylesheet"
	href="/manager/vendor/fontawesome-free/css/all.min.css">
<link rel="stylesheet" href="/manager/css/sb-admin-2.min.css">
</head>
</head>
<body id="page-top">
	<div id="wrapper">
		<%@include file="slidebar.jsp"%>

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">
			<!-- Main Content -->
			<div id="content">
				<%@include file="navbar.jsp"%>
				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<h1 class="h3 mb-2 text-gray-800">Form Colors</h1>

					<!-- DataTales Example -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">Cập Nhật</h6>
						</div>
						<div class="card-body">
							<form:form action="/admin/productcolorForm/save" method="post"
								modelAttribute="productcolor" enctype="multipart/form-data">

								<div class="form-group">
									<label for="inputState">Màu sắc</label>
									<form:select path="colorId"
										onchange="document.location.href='/admin/productcolorForm/change/'+this.value"
										cssClass="form-control">
										<form:options items="${color}" />
									</form:select>
								</div>

								<div class="form-group">
									<label for="inputState">Sản phẩm</label>
									<form:select path="productId" cssClass="form-control">
										<form:options items="${product}" />
									</form:select>
								</div>
								
								<div class="form-group">
									<label for="inputEmail4">Chọn hình</label>
									<div class="custom-file mb-3 ">
										<form:input path="image" type="file"
											cssClass="custom-file-input"
											cssErrorClass="custom-file-input is-invalid"
											id="validatedCustomFile" />
										<label class="custom-file-label" for="validatedCustomFile">Choose
											file...</label>
									</div>
								</div>

								<button type="submit" class="btn btn-primary">
									<i class="fas fa-pen"></i> Lưu
								</button>
							</form:form>
						</div>
					</div>

				</div>
				<!-- /.container-fluid -->

				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<h1 class="h3 mb-2 text-gray-800">Danh Sách</h1>
					<!-- <p class="mb-4">DataTables is a third party plugin that is used to generate the demo table below.
                        For more information about DataTables, please visit the <a target="_blank"
                            href="https://datatables.net">official DataTables documentation</a>.</p> -->

					<!-- DataTales Example -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">Bảng danh sách</h6>
						</div>
						<div class="card-body">

							<div class="row">
								<div class="col-lg-8 "></div>
								<div class="col-lg-4 mb-3">
									<form action="/admin/productcolorForm/form" method="post">
										<div class="input-group">
											<input type="text" name="keyword9"
												value="${sessionScope.keyword9}" class="form-control"
												placeholder="Tìm theo tên">
											<div class="input-group-append">
												<button class="btn btn-outline-secondary bg-info text-white">
													<i class="fas fa-search"></i>
												</button>
											</div>
										</div>
									</form>
								</div>
							</div>
							<table class="table table-bordered" width="100%" cellspacing="0">
								<thead>
									<tr>
										<th>Tên sản phẩm</th>
										<th>Hình ảnh</th>
										<th>Màu sắc</th>
										<th></th>
									</tr>
								</thead>
								<tfoot>
									<tr>
										<th>Tên sản phẩm</th>
										<th>Hình ảnh</th>
										<th>Màu sắc</th>
										<th></th>
									</tr>
								</tfoot>
								<tbody>
									<c:forEach var="item" items="${procolorItem.content}">
										<tr>
											<td>${item.nameProduct}</td>
											<td class="text-center"><img width="100" height="100"
												src="/upload/${item.image}"></td>
											<td>${item.nameColor}</td>
											<td>
												<button type="button" class="btn btn-danger"
													data-toggle="modal" data-target="#exampleModal${item.id}">Xóa</button>
										</tr>
										<!-- Modal -->
										<div class="modal fade" id="exampleModal${item.id}"
											tabindex="-1" aria-labelledby="exampleModalLabel"
											aria-hidden="true">
											<div class="modal-dialog">
												<div class="modal-content">
													<div class="modal-header">
														<h5 class="modal-title" id="exampleModalLabel">Thông
															Báo!</h5>
														<button type="button" class="close" data-dismiss="modal"
															aria-label="Close">
															<span aria-hidden="true">&times;</span>
														</button>
													</div>
													<div class="modal-body">Mục sẽ bị xóa vĩnh viễn khỏi
														hệ thống. Bạn có muốn tiếp tục?</div>
													<div class="modal-footer">
														<button type="button" class="btn btn-secondary"
															data-dismiss="modal">Đóng</button>
														<a href="/admin/productcolorForm/form/delete/${item.id}"
															class="btn btn-danger">Xóa</a>
													</div>
												</div>
											</div>
										</div>
									</c:forEach>
								</tbody>
							</table>
							<nav aria-label="Page navigation example">
								<ul class="pagination justify-content-center">
									<li class="page-item ${(procolorItem.number==0)?'disabled':''}"><a
										class="page-link"
										href="/admin/productcolorForm/form?p=${procolorItem.number-1}"
										aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
									</a></li>
									<li class="page-item disabled"><a class="page-link"
										href="#">${procolorItem.number+1}</a></li>
									<li
										class="page-item ${(procolorItem.number>=procolorItem.totalPages-1)?'disabled':''}"><a
										class="page-link"
										href="/admin/productcolorForm/form?p=${procolorItem.number+1}"
										aria-label="Next"> <span aria-hidden="true">&raquo;</span>
									</a></li>
								</ul>
							</nav>
						</div>

					</div>

				</div>
				<!-- /.container-fluid -->
			</div>
			<!-- End of Main Content -->



			<%@include file="footer.jsp"%>
		</div>
		<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<!-- Logout Modal-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Thông Báo!</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">Vui lòng nhấn nút "Đăng xuất" bên dưới
					nếu bạn muốn đăng xuất tài khoản.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Thoát</button>
					<a class="btn btn-primary" href="/logout">Đăng xuất</a>
				</div>
			</div>
		</div>
	</div>

</body>
<script src="/manager/vendor/jquery/jquery.min.js"></script>
<script src="/manager/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="/manager/vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="/manager/js/sb-admin-2.min.js"></script>

<!-- Page level plugins -->
<script src="/manager/vendor/chart.js/Chart.min.js"></script>

<!-- Page level custom scripts -->
<script src="/manager/js/demo/chart-area-demo.js"></script>
<script src="/manager/js/demo/chart-pie-demo.js"></script>
</html>