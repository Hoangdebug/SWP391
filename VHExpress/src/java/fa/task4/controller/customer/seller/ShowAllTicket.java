package fa.task4.controller.seller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fa.task4.dao.TicketDAO;
import fa.task4.model.Ticket;
import fa.task4.model.TicketFullname;

/**
 * Servlet implementation class ShowAllTicket
 */
@WebServlet("/ShowAllTicket")
public class ShowAllTicket extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowAllTicket() {
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
		String keyFilter = request.getParameter("keyFilter");
		System.out.println(keyFilter+"aaaaa");
		
		TicketDAO ticketModel = new TicketDAO();
		ArrayList<TicketFullname> list = new ArrayList<>();
		if (keyFilter!= null) {
			list= ticketModel.filterTicket(keyFilter);
		}if (keyFilter == null) {
			list = ticketModel.getListTicket();
			
		}

		System.out.println(list+"hhheheheh");
		request.setAttribute("ticket", list);  
		request.getRequestDispatcher("/WEB-INF/view/viewSeller/IndexSeller.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
