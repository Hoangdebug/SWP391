<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link href="Cart.css">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
<!------ Include the above in your HEAD tag ---------->
<title>Document</title>
<link rel="stylesheet" href="css/Cart.css">
</head>
<style>
body{
background-color: white;
}
img {
	margin-left: 180px;
	position: absolute;
	width: 250px;
	height: 50px;
	margin-top: -5px;
}
</style>

<body>
	<div id="sb-site">
	
		<a href="${pageContext.request.contextPath}/ShowAllBus"><img src="./images/logo2.png"></a>
		<div class="br-header">
			<div id="top-nav" class="hidden-xs">
				<div class="container">
					<ul class="clearfix">


						<li class="pull-right diff"><a
							href="${pageContext.request.contextPath}/AccountServlet"><span
								class="hidden-xs">Hi, ${userlogin.getFullName()}</span></a></li>

						<li class="pull-right"><a
							href="${pageContext.request.contextPath}/ViewCartCustomer?idUser=${userlogin.getIdUser()}">Lịch
								sử mua vé</a></li>
						<li class="pull-right"><a
							href="${pageContext.request.contextPath}/UpdateNdServlet?idUser=${userlogin.getIdUser()}">Cập
								nhật thông tin</a></li>

					</ul>
				</div>
			</div>
		</div>
		<div>
			<section id="body-content">
				<div id="user-infomations" class="container">
					<form action="UpdateNdServlet" class="form-horizontal"
						method="post">
						<div class="row">
							<div class=" col-lg-6 col-md-6 col-sm-12 col-sm-12 col-xs-12">
								<h3 class="text-uppercase bg-success">Thông tin cá nhân</h3>
								<table class="table form-info">
									<tbody>
										<tr>

											<td>Tên đăng nhập:<span style="color: red;">(*)</span></td>
											<td><input class="form-control input-sm" id="FullName"
												name="username" type="text" value="${user.getUsername()}" readonly="readlonly">
												<span class="field-validation-valid"

												data-valmsg-for="FullName" data-valmsg-replace="true"></span>
											</td>
										</tr>

										<tr>
											<td>Họ và tên:<span style="color: red;">(*)</span></td>
											<td><input class="form-control input-sm" id="FullName"
												name="fullname" type="text" value="${user.getFullName()}">
												<span class="field-validation-valid"
												data-valmsg-for="FullName" data-valmsg-replace="true"></span>
											</td>
										</tr>
										<tr>
											<td>Mật khẩu:<span style="color: red;">(*)</span></td>
											<td><input class="form-control input-sm" id="FullName"
												name="password" type="text" value="${user.getPassword()}">
												<span class="field-validation-valid"
												data-valmsg-for="FullName" data-valmsg-replace="true"></span>
											</td>
										</tr>
										<tr>

											<!-- <td type="hidden" 	>Chức vụ: <span type="hidden" style="color: red;">(*)</span></td>
 -->
											<td><input class="form-control input-sm"
												readonly="readlonly" id="FullName" name="role" type="hidden"
												value="${user.getRole()}"> <span
												class="field-validation-valid" data-valmsg-for="FullName"
												data-valmsg-replace="true"></span></td>
										</tr>
										<tr>
											<td>Giới tính:<span style="color: red;">(*)</span></td>
											<td>
												<div class="input-group" value="${user.getGender()}">
													<div class="p-t-10">
														<label class="radio-container m-r-45">Nam <input
															type="radio" checked="checked" name="gender" value="Nam">
															<span class="checkmark"></span>
														</label> <label class="radio-container">Nữ <input
															type="radio" name="gender" value="Nu"> <span
															class="checkmark"></span>
														</label>
													</div>
												</div>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class=" col-lg-6 col-md-6 col-sm-12 col-sm-12 col-xs-12">
								<h3 class="text-uppercase bg-success">Thông tin địa chỉ</h3>
								<table class="table form-info">
									<tbody>
										<tr>
											<td>Điện thoại <span style="color: red;">(*)</span></td>
											<td><input class="form-control input-sm" id="Phone"
												name="phoneNum" type="text" value="${user.getPhoneNum()}"></td>
										</tr>
										<tr>
											<td>Địa chỉ</td>
											<td><input class="form-control input-sm" id="Address"
												name="address" type="text" value="${user.getAddress()}">
											</td>
										</tr>
										<tr>
											<td>Email <span style="color: red;">(*)</span></td>
											<td><input class="form-control input-sm" id="Email"

												name="email" type="text" value="${user.getEmail()}">

										</tr>
										<tr>
										<tr>
											
											<td><input readonly="readlonly" hidden="hidden"
												class="form-control input-sm" id="Address" name="idUser"
												type="hidden" value="${user.getIdUser()}"></td>
										</tr>
										<tr>
											<td colspan="2" class="text-right">
												<button type="submit" class="btn btn-primary">Cập
													nhật</button>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</form>
				</div>
			</section>
		</div>
</body>

</html>