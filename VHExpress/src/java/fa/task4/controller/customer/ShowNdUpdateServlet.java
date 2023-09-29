package fa.task4.controller.customer;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fa.task4.dao.AccountDAO;
import fa.task4.model.Users;

/**
 * Servlet implementation class ShowNdUpdate
 */
@WebServlet("/ShowNdUpdateServlet")
public class ShowNdUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
//	    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
//	            throws ServletException, IOException {
//	         response.setContentType("text/html;charset=UTF-8");
//	       
//	      
//	       
//	       
//	    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String idUser = request.getParameter("idUser");
		AccountDAO ac = new AccountDAO();
		Users users = ac.getIdUser(Integer.parseInt(idUser));
	        request.setAttribute("user",users );
	        request.getRequestDispatcher("/WEB-INF/view/viewCustomer/ShowInformation.jsp").forward(request, response); 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		processRequest(request, response);
		
	}

}
