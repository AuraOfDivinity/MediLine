package Admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



@WebServlet("/UpdateOrders")
public class UpdateOrders extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private String desc = "";
	private float tot = 0;

	public UpdateOrders() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		

		
		
		
		
		
		desc = "";
		tot = 0;
		response.getWriter().append("Served at: ").append(request.getContextPath());
		response.getWriter().append("Served at: ").append(request.getContextPath());

		HttpSession ss = request.getSession();
		List<String> cartItems = (List<String>) ss.getAttribute("cart");
		List<Float> price = (List<Float>) ss.getAttribute("cPrice");

		
		Order ord1 = new Order();
		
		for (String s : cartItems) {
			desc = s + ", " + desc;
		}

		for (float temp1 : price) {
			tot += temp1;

		}

		
		ord1.setoDetails(desc);
		ord1.setoTotal(tot);

		OrderDao.addOrder(ord1);
		response.sendRedirect("MemberWelcome.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
