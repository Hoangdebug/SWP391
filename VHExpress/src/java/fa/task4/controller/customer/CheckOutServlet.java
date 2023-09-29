package fa.task4.controller.customer;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import fa.task4.dao.AccountDAO;
import fa.task4.dao.BusDAO;
import fa.task4.model.Bus;
import fa.task4.model.Users;

/**
 * Servlet implementation class CheckOutServlet
 */
@WebServlet("/CheckOutServlet")
public class CheckOutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CheckOutServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		response.getWriter().append("Served at: ").append(request.getContextPath());

		String idBus = request.getParameter("idBus");
		String idUser = request.getParameter("idUser");
		BusDAO busModel = new BusDAO();
		AccountDAO accountModel = new AccountDAO();
		Users user = accountModel.getIdUser(Integer.parseInt(idUser));
		request.setAttribute("user", user);
		Bus bus = busModel.getIdBus(Integer.parseInt(idBus));
		request.setAttribute("bus", bus);
		request.getRequestDispatcher("/WEB-INF/view/viewCustomer/Checkout.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//
//		int idBus = Integer.parseInt(request.getParameter("idBus"));
//		System.out.println(idBus);
//		String departure = request.getParameter("departure");
//		String destination = request.getParameter("destination");
//		String time = request.getParameter("time");
//		String price = request.getParameter("price");
//		String date = request.getParameter("date");
//		String phone = request.getParameter("phone");
//
//		String ListTicket = request.getParameter("listSeat");
//		String idListSeatString = ListTicket.substring(1);
//		System.out.println("a" + idListSeatString);
//		String idSeat[] = idListSeatString.split(" ");
//
//		HttpSession session = request.getSession();
//		Users user = (Users) session.getAttribute("userlogin");
//		int idUser = user.getIdUser();
//
//		System.out.println(idUser);
////	Users idUser = (Users) session.getAttribute("userlogin");
//		session.setAttribute("date", date);
//		BusModel busModel = new BusModel();
////       boolean result =busModel.booking(departure, destination, time, price,date, idBus,idUser.getIdUser(),phone);
//		for (int i = 0; i < idSeat.length; i++) {
//			System.out.println("idSEAT" + idSeat[i]);
//			boolean result = busModel.booking(departure, idSeat[i], destination, time, price, date, idBus, idUser, "1");
//		}

	}

}
