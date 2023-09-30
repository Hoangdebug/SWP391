<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet"
              href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script
        src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script
        src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet"
              href="bootstrap-4.0.0/css/bootstrap.min.css">

        <!--        <link rel="stylesheet"
                      href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
                      integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
                      crossorigin="anonymous">-->

        <!-- Optional theme -->
        <!-- Latest compiled and minified JavaScript -->
        <script
            src="bootstrap-4.0.0/js/bootstrap.min.js"
            integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
        crossorigin="anonymous"></script>

        <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js"
        type="text/javascript"></script>
        <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css"
              rel="stylesheet" type="text/css" />
        <!------ Include the above in your HEAD tag ---------->
        <title>Document</title>
        <link rel="stylesheet" href="css/Cart.css">
    </head>
    <style>
        body {
            font-family: 'Varela Round', sans-serif;
        }
        .navbar {
            background: #fff;
            padding-left: 16px;
            padding-right: 16px;
            border-bottom: 1px solid #dfe3e8;
            border-radius: 0;
        }
        .navbar .navbar-brand {
            padding-left: 0;
            font-size: 20px;
            padding-right: 10px;
        }
        .navbar .navbar-brand b {
            color: #33cabb;		
        }

        .navbar a {
            color: #888;
            font-size: 15px;
        }


        .navbar .sign-up-btn {
            min-width: 110px;
            max-height: 36px;
            background-color: red;
        }

        .navbar a, .navbar a:active {
            color: #888;
            padding: 8px 20px;
            background: transparent;
            line-height: normal;
        }
        .ftco-section {
            padding: 6em 0;
            position: relative;

        }
        .step-item{
            width: auto;
            height: 250px;
            border: dashed 3px var(--teal);
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            align-items: center;
            padding: 20px 40px;
        }

        .step-name{
            font-weight: 600;
            font-size: 28px;
            color: black;
        }

        .step-content{
            text-align: left;
            margin-bottom: 10px;
        }

        .step-content p{
            margin: 0;
        }


    </style>


</style>
<body>

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


        <!--
        
        
        
                </div>-->





        <div class="container">
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
        </div>

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


        <footer class="ftco-footer ftco-bg-dark ftco-section">

            <div class="row mb-5" style="background-color: black">
                <div class="col-md">
                    <div class="ftco-footer-widget mb-4">
                        <h2 class="ftco-heading-2"><a href="#" class="logo">Car<span>book</span></a></h2>
                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                        <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
                            <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                            <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                            <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md">
                    <div class="ftco-footer-widget mb-4 ml-md-5">
                        <h2 class="ftco-heading-2">Information</h2>
                        <ul class="list-unstyled">
                            <li><a href="#" class="py-2 d-block">About</a></li>
                            <li><a href="#" class="py-2 d-block">Services</a></li>
                            <li><a href="#" class="py-2 d-block">Term and Conditions</a></li>
                            <li><a href="#" class="py-2 d-block">Best Price Guarantee</a></li>
                            <li><a href="#" class="py-2 d-block">Privacy &amp; Cookies Policy</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md">
                    <div class="ftco-footer-widget mb-4">
                        <h2 class="ftco-heading-2">Customer Support</h2>
                        <ul class="list-unstyled">
                            <li><a href="#" class="py-2 d-block">FAQ</a></li>
                            <li><a href="#" class="py-2 d-block">Payment Option</a></li>
                            <li><a href="#" class="py-2 d-block">Booking Tips</a></li>
                            <li><a href="#" class="py-2 d-block">How it works</a></li>
                            <li><a href="#" class="py-2 d-block">Contact Us</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md">
                    <div class="ftco-footer-widget mb-4">
                        <h2 class="ftco-heading-2">Have a Questions?</h2>
                        <div class="block-23 mb-3">
                            <ul>
                                <li><span class="icon icon-map-marker"></span><span class="text">203 Fake St. Mountain View, San Francisco, California, USA</span></li>
                                <li><a href="#"><span class="icon icon-phone"></span><span class="text">+2 392 3929 210</span></a></li>
                                <li><a href="#"><span class="icon icon-envelope"></span><span class="text">info@yourdomain.com</span></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </footer>

</body>
<script src="css/cart.js"></script>
</html>