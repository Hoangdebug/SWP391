<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%--<%@include  file="IndexAdmin.jsp"%>--%>
        <section class="page-section cta">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12 mx-auto">
                        <div class="cta-inner text-center rounded">
                            <section id="user-list-section">
                                <div class="container">
                                    <div class="row">
                                        <form action="showAllUser" method="get">
                                            <table width="100%" cellspacing="0" class="table-search">
                                                <input type="text" class="form-control"
                                                       placeholder="Tìm kiếm " autocomplete="off" name="keySearch">
                                                <a
                                                    href="${pageContext.request.contextPath}/showAllUser">
                                                    <button type="submit" class="btn-search"
                                                            value="Tìm kiếm người dùng">Tìm kiếm</button>
                                                </a>
                                            </table>
                                        </form>

                                        <table class="table-dsach">
                                            <h3 class="text-primary text-uppercase">Danh sách người
                                                dùng</h3>
                                            <thead>
                                                <tr>
                                                    <th style="text-align: left; padding-right: 35;">Tên đăng nhập</th>
                                                    <th style="text-align: left; padding-right: 35;">Mật khẩu</th>
                                                    <th style="text-align: left; padding-right: 35;">Họ và tên</th>
                                                    <th style="text-align: left; padding-right: 35;">Giới tính</th>
                                                    <th class="wrapper"
                                                        style="text-align: left; padding-right: 35;">Địa chỉ</th>
                                                    <th style="text-align: left; padding-right: 35;">Số di động</th>
                                                    <th style="text-align: left; padding-right: 35;">Chức vụ</th>
                                                    <th style="text-align: left; padding-right: 35;">Email</th>
                                                    <th></th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach var="user" items="${user}">
                                                <tr>

                                                    <td>${user.getUsername()}</td>
                                                    <td>${user.getPassword()}</td>
                                                    <td>${user.getFullName()}</td>
                                                    <td>${user.getGender()}</td>
                                                    <td class="wrapper">${user.getAddress()}</td>
                                                    <td>${user.getPhoneNum()}</td>
                                                    <td>${user.getRole()}</td>
                                                    <td>${user.getEmail()}</td>
                                                    <td><a
                                                            href="${pageContext.request.contextPath}/UpdateUserServlet?idUser=${user.getIdUser()}">Update</a></td>
                                                </tr>
                                            </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </section>
                            <div id="feedback-content" class="content">Nội dung Phản hồi từ khách hàng</div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>
