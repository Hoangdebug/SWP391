package fa.task4.controller.customer;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fa.task4.dao.TicketDAO;

/**
 * Servlet implementation class updateStatusCustomer
 */
@WebServlet("/updateStatusCustomer")
public class UpdateStatusCustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateStatusCustomer() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		TicketDAO ticketModel = new TicketDAO();

		String idTicket = request.getParameter("idTicket");
		System.out.println(idTicket+"Id vé");
		String status = "0";
		try {
			boolean result = ticketModel.updateStatus(idTicket, status);
			System.out.println(ticketModel.updateStatus(idTicket, status));
		} catch (Exception e) {
			System.out.println(e);
		}
		response.sendRedirect(request.getContextPath() + "/ViewCartCustomer");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
