<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Document</title>
    </head>
    <style>
    </style>

<body>
    <!--NAVBAR-->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a href="#" class="navbar-brand">VH<b>EXPRESS</b></a> 
        <!-- Collection of nav links, forms, and other content for toggling -->
        <div id="navbarCollapse" class="collapse navbar-collapse justify-content-start">
            <div class="dropdown">
                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Ngôn ngữ
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                    <a class="dropdown-item" href="#">Tiếng Anh</a>
                    <a class="dropdown-item" href="#">Tiếng việt</a>
                    <a class="dropdown-item" href="#">Tiếng Nhật</a>
                </div>
            </div>
            <div class="navbar-nav">
                <a href="#" class="nav-item nav-link">Trang chủ</a>
                <a href="#" class="nav-item nav-link">Thông tin</a>			
            </div>
            <a href="#" class="nav-item nav-link">Liên hệ</a>
            <div class="navbar-nav ml-auto action-buttons">
                <div class="nav-item">
                    <a href="${pageContext.request.contextPath}/AccountServlet" class="nav-link dropdown-toggle mr-4">Đăng nhập</a>

                </div>
                <div class="nav-item ">
                    <a href="${pageContext.request.contextPath}/RegisterServlet"  class="btn btn-primary dropdown-toggle sign-up-btn">Đăng ký</a>
                </div>
            </div>

    </nav>
    <!--END NAVBAR-->

    <!--CAROUSEL-->
    <div class="container mt-5">
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="images/halong.jpg" alt="Hình ảnh 1">
                    <div class="carousel-caption">
                        <h3>Tiêu đề 1</h3>
                        <p>Mô tả 1</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="images/2.jpg" alt="Hình ảnh 2">
                    <div class="carousel-caption">
                        <h3>Tiêu đề 2</h3>
                        <p>Mô tả 2</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="images/3.jpg" alt="Hình ảnh 3">
                    <div class="carousel-caption">
                        <h3>Tiêu đề 3</h3>
                        <p>Mô tả 3</p>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>

        <!-- CAROUSEL-->
        <!--
        
        
        
                </div>-->





        <!--        <div class="container">
                    <div class="box-search">
                        <form>
                            <table width="100%" cellspacing="0" class="table-search">
                                <tbody>
                                    <tr>
                                        <td><select class="form-control col-sm-12">
                                                <option value="Điểm đi" selected>Điểm đi</option>
                                                <option>Sài gòn</option>
                                            </select></td>
                                        <td><select class="form-control col-sm-12">
                                                <option value="Điểm đến" selected>Điểm đến</option>
                                                <option>Cà Mau</option>
                                            </select></td>
                                        <td class="date"><input class="form-control col-sm-12"
                                                                type="date"></td>
                                        <td><input type="submit" class="btn-outline-info" value="Tìm vé"></td>
                                    </tr>
                                </tbody>
                            </table>
                        </form>
                    </div>
                </div>-->

        <section class="ftco-section">
            <div class="container">
                <div class="row justify-content-center mb-5">
                    <div class="col-md-7 text-center heading-section ftco-animate">
                        <span class="subheading">Dịch vụ</span>
                        <h2 class="mb-3">ĐÓN XE KHÔNG ĐỢI CHỜ</h2>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3">
                        <div class="step-item">
                            <div class="step-name">
                                Bước 1
                            </div>
                            <div class="step-content">
                                <p>Vào trang cho khách hàng</p>
                                <div class="highlight">
                                    VHEXPRESS.COM
                                </div>
                            </div>
                            <a href="">Đi tới KHTT</a>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="step-item">
                            <div class="step-name">
                                Bước 2
                            </div>
                            <div class="step-content">
                                <div class="highlight">
                                    ĐĂNG KÝ TÀI KHOẢN 
                                </div>
                                <p>bằng số điện thoại đặt vé</p>
                            </div>
                            <a href="">Đi tới KHTT</a>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="step-item">
                            <div class="step-name">
                                Bước 3
                            </div>
                            <div class="step-content">
                                <p>Đăng nhập và chọn </p>
                                <div class="highlight">
                                    “QUẢN LÝ VÉ XE”
                                </div>
                            </div>
                            <a href="">Đi tới KHTT</a>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="step-item">
                            <div class="step-name">
                                Bước 4
                            </div>
                            <div class="step-content">
                                <p>Chọn</p>
                                <div class="highlight">
                                    “XEM VỊ TRÍ XE”
                                </div>
                            </div>
                            <a href="">Đi tới KHTT</a>
                        </div>
                    </div>
                </div>
        </section>


        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <h4>Thông tin liên hệ</h4>
                        <p>Địa chỉ: 123 Đường ABC, Thành phố XYZ</p>
                        <p>Điện thoại: (123) 456-7890</p>
                        <p>Email: info@vexe.com</p>
                    </div>
                    <div class="col-md-4">
                        <h4>Liên kết nhanh</h4>
                        <ul>
                            <li><a href="#">Trang chủ</a></li>
                            <li><a href="#">Vé xe</a></li>
                            <li><a href="#">Thông tin về chúng tôi</a></li>
                            <li><a href="#">Liên hệ</a></li>
                        </ul>
                    </div>
                    <div class="col-md-4">
                        <h4>Theo dõi chúng tôi</h4>
                        <p>Chúng tôi trên mạng xã hội:</p>
                        <a href="#"><i class="fab fa-facebook"></i></a>
                        <a href="#"><i class="fab fa-twitter"></i></a>
                        <a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
        </footer>


</body>
<script src="css/cart.js"></script>
</html>