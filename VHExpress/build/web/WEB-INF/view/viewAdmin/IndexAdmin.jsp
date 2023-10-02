
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
        <link rel="stylesheet"
              href="bootstrap/assets/bootstrap/css/bootstrap.min.css">
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
        <style>

            @import url(
            "https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap");

            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: "Poppins", sans-serif;
            }
            :root {
                --background-color1: #fafaff;
                --background-color2: #ffffff;
                --background-color3: #ededed;
                --background-color4: #cad7fda4;
                --primary-color: #4b49ac;
                --secondary-color: #0c007d;
                --Border-color: #3f0097;
                --one-use-color: #3f0097;
                --two-use-color: #5500cb;
            }
            body {
                background-color: var(--background-color4);
                max-width: 100%;
                overflow-x: hidden;
            }

            header {
                height: 70px;
                width: 100vw;
                padding: 0 30px;
                background-color: var(--background-color1);
                position: fixed;
                z-index: 100;
                box-shadow: 1px 1px 15px rgba(161, 182, 253, 0.825);
                display: flex;
                justify-content: space-between;
                align-items: center;
            }

            .logo {
                font-size: 27px;
                font-weight: 600;
                color: rgb(47, 141, 70);
            }

            .icn {
                height: 30px;
            }
            .menuicn {
                cursor: pointer;
            }

            .searchbar,
            .logosec {
                display: flex;
                align-items: center;
                justify-content: center;
            }

            .searchbar2 {
                display: none;
            }

            .logosec {
                gap: 60px;
            }

            .searchbar input {
                width: 250px;
                height: 42px;
                border-radius: 50px 0 0 50px;
                background-color: var(--background-color3);
                padding: 0 20px;
                font-size: 15px;
                outline: none;
                border: none;
            }
            .searchbtn {
                width: 50px;
                height: 42px;
                display: flex;
                align-items: center;
                justify-content: center;
                border-radius: 0px 50px 50px 0px;
                background-color: var(--secondary-color);
                cursor: pointer;
            }

            .circle {
                height: 7px;
                width: 7px;
                position: absolute;
                background-color: #fa7bb4;
                border-radius: 50%;
                left: 19px;
                top: 8px;
            }
            .dp {
                height: 40px;
                width: 40px;
                background-color: #626262;
                border-radius: 50%;
                display: flex;
                align-items: center;
                justify-content: center;
                overflow: hidden;
            }
            .main-container {
                display: flex;
                width: 100vw;
                position: relative;
                top: 70px;
                z-index: 1;
            }
            .dpicn {
                height: 42px;
            }

            .main {
                height: calc(100vh - 70px);
                width: 100%;
                overflow-y: scroll;
                overflow-x: hidden;
                padding: 40px 30px 30px 30px;
            }

            .main::-webkit-scrollbar-thumb {
                background-image:
                    linear-gradient(to bottom, rgb(0, 0, 85), rgb(0, 0, 50));
            }
            .main::-webkit-scrollbar {
                width: 5px;
            }
            .main::-webkit-scrollbar-track {
                background-color: #9e9e9eb2;
            }

            .box-container {
                display: flex;
                justify-content: space-evenly;
                align-items: center;
                flex-wrap: wrap;
                gap: 50px;
            }
            .nav {
                min-height: 91vh;
                width: 250px;
                background-color: var(--background-color2);
                position: fixed;
                top: 0px;
                left: 00;
                box-shadow: 1px 1px 10px rgba(198, 189, 248, 0.825);
                display: flex;
                flex-direction: column;
                justify-content: space-between;
                overflow: hidden;
                padding: 30px 0 20px 10px;
            }
            .navcontainer {
                height: calc(100vh - 70px);
                width: 250px;
                position: relative;
                overflow-y: scroll;
                overflow-x: hidden;
                transition: all 0.5s ease-in-out;
            }
            .navcontainer::-webkit-scrollbar {
                display: none;
            }
            .navclose {
                width: 80px;
            }
            .nav-option {
                width: 250px;
                height: 60px;
                display: flex;
                align-items: center;
                padding: 0 30px 0 20px;
                gap: 20px;
                transition: all 0.1s ease-in-out;
            }
            .nav-option:hover {
                border-left: 5px solid #a2a2a2;
                background-color: #dadada;
                cursor: pointer;
            }
            .nav-img {
                height: 30px;
            }

            .nav-upper-options {
                display: flex;
                flex-direction: column;
                align-items: center;
                gap: 30px;
            }

            .option1 {
                border-left: 5px solid #010058af;
                background-color: var(--Border-color);
                color: white;
                cursor: pointer;
            }
            .option1:hover {
                border-left: 5px solid #010058af;
                background-color: var(--Border-color);
            }
            .box {
                height: 130px;
                width: 230px;
                border-radius: 20px;
                box-shadow: 3px 3px 10px rgba(0, 30, 87, 0.751);
                padding: 20px;
                display: flex;
                align-items: center;
                justify-content: space-around;
                cursor: pointer;
                transition: transform 0.3s ease-in-out;
            }
            .box:hover {
                transform: scale(1.08);
            }

            .box:nth-child(1) {
                background-color: var(--one-use-color);
            }
            .box:nth-child(2) {
                background-color: var(--two-use-color);
            }
            .box:nth-child(3) {
                background-color: var(--one-use-color);
            }
            .box:nth-child(4) {
                background-color: var(--two-use-color);
            }

            .box img {
                height: 50px;
            }
            .box .text {
                color: white;
            }
            .topic {
                font-size: 13px;
                font-weight: 400;
                letter-spacing: 1px;
            }

            .topic-heading {
                font-size: 30px;
                letter-spacing: 3px;
            }

            .report-container {
                min-height: 300px;
                max-width: 1200px;
                margin: 70px auto 0px auto;
                background-color: #ffffff;
                border-radius: 30px;
                box-shadow: 3px 3px 10px rgb(188, 188, 188);
                padding: 0px 20px 20px 20px;
            }
            .report-header {
                height: 80px;
                width: 100%;
                display: flex;
                align-items: center;
                justify-content: space-between;
                padding: 20px 20px 10px 20px;
                border-bottom: 2px solid rgba(0, 20, 151, 0.59);
            }

            .recent-Articles {
                font-size: 30px;
                font-weight: 600;
                color: #5500cb;
            }

            .view {
                height: 35px;
                width: 90px;
                border-radius: 8px;
                background-color: #5500cb;
                color: white;
                font-size: 15px;
                border: none;
                cursor: pointer;
            }

            .report-body {
                max-width: 1160px;
                overflow-x: auto;
                padding: 20px;
            }
            .report-topic-heading,
            .item1 {
                width: 1120px;
                display: flex;
                justify-content: space-between;
                align-items: center;
            }
            .t-op {
                font-size: 18px;
                letter-spacing: 0px;
            }

            .items {
                width: 1120px;
                margin-top: 15px;
            }

            .item1 {
                margin-top: 20px;
            }
            .t-op-nextlvl {
                font-size: 14px;
                letter-spacing: 0px;
                font-weight: 600;
            }

            .label-tag {
                width: 100px;
                text-align: center;
                background-color: rgb(0, 177, 0);
                color: white;
                border-radius: 4px;
            }
            .content {
                display: none;
            }

            .content.active {
                display: block;
            }
            .row{
                margin: 0px 15px;
            }






        </style>
    </head>

    <body>  
        <header>
            <div class="logosec">
                <a href="${pageContext.request.contextPath}/showAllUser"><div class="logo">VH EXPRESS</div></a>

            </div>

            <div class="search">

            </div>
            <div class="dp">
                <img
                    src="https://media.geeksforgeeks.org/wp-content/uploads/20221210180014/profile-removebg-preview.png"
                    class="dpicn"
                    alt="dp"
                    />
            </div>
        </div>
    </header>

    <!--
        <div id="sb-site">
            <div class="br-header">
                <div id="top-nav" class="hidden-xs">
                    <div class="container">
                        <ul class="clearfix">
                            <li></li><li></li> 
                            <li><a
                                    href="${pageContext.request.contextPath}/InsertUserServlet"><i
                                        class="fa fa-truck" aria-hidden="true"></i>Tạo người dùng</a></li>
                            <li class="pull-right diff"><a href="#"><span
                                        class="hidden-xs"></span></a></li>
                            <li class="pull-right"><a target="_blank" href="#"><i
                                        class="fa fa-facebook-square"></i>Chào Admin</a></li>
                        </ul>
                    </div>
                </div>
            </div>-->
    <!-- ngView:  -->

    <div class="main-container">
        <div class="navcontainer">
            <nav class="nav">
                <div class="nav-upper-options">
                    <div class="nav-option option1">
                        <img
                            src="https://media.geeksforgeeks.org/wp-content/uploads/20221210182148/Untitled-design-(29).png"
                            class="nav-img"
                            alt="dashboard"
                            />
                        <h3>Thống kê</h3>
                    </div>

                    <div class="option2 nav-option">
                        <img
                            src="https://media.geeksforgeeks.org/wp-content/uploads/20221210183322/9.png"
                            class="nav-img"
                            alt="articles"
                            />
                        <a href="javascript:void(0);" onclick="showUserList()">Xem danh sách người dùng</a>
                    </div>

                    <div class="nav-option option3">
                        <img
                            src="https://media.geeksforgeeks.org/wp-content/uploads/20221210183320/5.png"
                            class="nav-img"
                            alt="report"
                            />
                        <h3>Phản hổi từ khác hàng</h3>
                    </div>
                    <div class="nav-option logout">
                        <img
                            src="https://media.geeksforgeeks.org/wp-content/uploads/20221210183321/7.png"
                            class="nav-img"
                            alt="logout"
                            />
                        <h3>Đăng xuất</h3>
                    </div>
                </div>
            </nav>
        </div>

        <div id="dashboard-content" class="content">Nội dung Thống kê</div>


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
    </div>
    <script>
        // Lấy tham chiếu đến phần danh sách người dùng
        var userListSection = document.getElementById("user-list-section");

        // Ẩn phần danh sách người dùng ban đầu
        userListSection.style.display = "none";

        // Hàm để hiển thị danh sách người dùng
        function showUserList() {
            userListSection.style.display = "block";
        }
    </script>
</body>

</html>