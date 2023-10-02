//package filter;
//
//import java.io.IOException;
//import java.io.PrintStream;
//import java.io.PrintWriter;
//import java.io.StringWriter;
//import javax.servlet.Filter;
//import javax.servlet.FilterChain;
//import javax.servlet.FilterConfig;
//import javax.servlet.ServletException;
//import javax.servlet.ServletRequest;
//import javax.servlet.ServletResponse;
//import javax.servlet.annotation.WebFilter;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//
///**
// *
// * @author ACER
// */
//@WebFilter("/protected/*")
//public class Auth implements Filter {
//
//    public void doFilter(ServletRequest request, ServletResponse response,
//            FilterChain chain)
//            throws IOException, ServletException {
//        HttpServletRequest httpRequest = (HttpServletRequest) request;
//        HttpServletResponse httpResponse = (HttpServletResponse) response;
//
//        HttpSession session = httpRequest.getSession(false);
//        boolean loggedIn = (session != null && session.getAttribute("user") != null);
//
//        String requestURI = httpRequest.getRequestURI();
//
//        if (loggedIn || requestURI.endsWith("/AccountServlet") || requestURI.endsWith("/AccountServlet")) {
//            // Cho phép truy cập trang index và các trang liên quan đến đăng nhập
//            chain.doFilter(request, response);
//        } else {
//            // Ngăn truy cập các trang khác nếu chưa đăng nhập
//            httpResponse.sendRedirect(httpRequest.getContextPath() + "/AccountServlet");
//        }
//    }
//
//    @Override
//    public void init(FilterConfig config) throws ServletException {
//        // Khởi tạo filter (có thể cần cài đặt ban đầu)
//    }
//
//    @Override
//    public void destroy() {
//        // Giải phóng tài nguyên (nếu cần)
//    }
//
//}
