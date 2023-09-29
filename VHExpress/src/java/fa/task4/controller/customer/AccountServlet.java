/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fa.task4.controller.customer;

import fa.task4.dao.AccountDAO;
import fa.task4.model.Users;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



@WebServlet(name = "AccountServlet", urlPatterns = { "/AccountServlet" })
public class AccountServlet extends HttpServlet {

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		String page = "";
		String message = "";
		AccountDAO acmodel = new AccountDAO();
		Users re = new Users(username, password);
		Users nd = acmodel.LoginAccount(re);
		HttpSession session = request.getSession();
		session.setAttribute("idUser", nd.getIdUser() );
//		Account nd = acmodel.LoginAccount(username, password);
	
//		System.out.print(nd.getUsername() + nd.getPassword());
		if (nd.getUsername() != null) {
				if (nd.getRole().equals("Admin")) {
					response.sendRedirect(request.getContextPath()+"/showAllUser");
					return;
				} else if (nd.getRole().equals("Seller")) {
					response.sendRedirect(request.getContextPath()+"/ShowAllTicket");
					return;
				}
				else if (nd.getRole().equals("Customer")) {
					
					request.getSession().setAttribute("userlogin", nd);
					page = "/WEB-INF/view/viewCustomer/IndexCustomer.jsp";
					response.sendRedirect(request.getContextPath()+"/ShowAllBus");
					return;
				}
				
			}else{
				message = "sai password hoac username";
				page = "/WEB-INF/view/Login.jsp";
				
				}
		
			request.setAttribute("messageerror", message);
			request.getRequestDispatcher(page).forward(request, response);
		}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/view/Login.jsp").forward(request, response);
	}

	/**
	 * Handles the HTTP <code>POST</code> method.
	 *
	 * @param request  servlet request
	 * @param response servlet response
	 * @throws ServletException if a servlet-specific error occurs
	 * @throws IOException      if an I/O error occurs
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

	/**
	 * Returns a short description of the servlet.
	 *
	 * @return a String containing servlet description
	 */
	@Override
	public String getServletInfo() {
		return "Short description";
	}// </editor-fold>

}
