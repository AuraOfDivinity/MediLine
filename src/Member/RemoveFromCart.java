package Member;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class RemoveFromCart
 */
@WebServlet("/RemoveFromCart")
public class RemoveFromCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession s1 = request.getSession();
		
		int index = Integer.parseInt(request.getParameter("indexNo"));
		
		List<String> desc = (List<String>) s1.getAttribute("cDesc");
		List<String> items = (List<String>) s1.getAttribute("cart");
		List<Float> price = (List<Float>) s1.getAttribute("cPrice");
		
		desc.remove(index);
		items.remove(index);
		price.remove(index);
		
		response.sendRedirect("MemberViewCart.jsp");
	}

	

}
