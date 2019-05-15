package Member;

import java.io.IOException;
import java.io.PrintStream;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.JspWriter;

import Admin.AppointmentDao;

/**
 * Servlet implementation class AddToCart
 */
@WebServlet("/AddToCart")
public class AddToCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		List<String> cartItems = (List<String>) session.getAttribute("cart");
		List<String> cartDesc = (List<String>) session.getAttribute("cDesc");
		List<Float> cartPrice = (List<Float>) session.getAttribute("cPrice");
		
		
		if(cartItems == null) {
			cartItems = new ArrayList<String>();
			session.setAttribute("cart", cartItems);
			
		}
		
		if(cartDesc == null) {
			cartDesc = new ArrayList<String>();
			session.setAttribute("cDesc", cartDesc);
		}
		
		if (cartPrice == null) {
			cartPrice = new ArrayList<Float>();
			session.setAttribute("cPrice", cartPrice);
		}
		
		
	
	
		
		String newItem = request.getParameter("param1");
		String newDesc = request.getParameter("param2");
		float newPrice = Float.parseFloat(request.getParameter("param3"));
		String time = request.getParameter("param4");
		
		
		System.out.println("In addtocart with values"+newDesc+" "+time);
		AppointmentDao.updateStatusConfirmed(time, newDesc);
		
		if(newItem != null) {
			cartItems.add(newItem);
		}
		
		if(newDesc != null) {
			cartDesc.add(newDesc);
		}
		
		if(newPrice > 0) {
			cartPrice.add(newPrice);
		}
		
		
		
		
		response.sendRedirect("MemberWelcome.jsp");
		
		
	}


}
