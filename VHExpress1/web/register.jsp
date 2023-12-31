<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%-- Kiểm tra xem có thông báo lỗi trong session không --%>
<%
    String emailExistsMessage = (String) session.getAttribute("emailExistsMessage");
    if (emailExistsMessage != null) {
        // Xóa thông báo lỗi khỏi session để tránh hiển thị nhiều lần
        session.removeAttribute("emailExistsMessage");
    }
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="register" method="POST">
            <div class="container">
                <%-- Hiển thị thông báo lỗi nếu có --%>
                <div class="error-message">
                    <%= (emailExistsMessage != null) ? emailExistsMessage : "" %>
                </div>
                <h1>Register</h1>
                <p>Please fill in this form to create an account.</p>
                <hr>

                <label for="fullname"><b>Repeat Password</b></label>
                <input type="text" placeholder="Enter Fullname" name="fullname" id="fullname" required>

                <label for="email"><b>Email</b></label>
                <input type="text" placeholder="Enter Email" name="email" id="email" required>

                <label for="password"><b>Password</b></label>
                <input type="password" placeholder="Enter Password" name="password" id="password" required>

                <hr>

                <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>
                <button type="submit" class="registerbtn">Register</button>
            </div>

            <div class="container signin">
                <p>Already have an account? <a href="#">Sign in</a>.</p>
            </div>
        </form>
    </body>
</html>
