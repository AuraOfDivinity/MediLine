package Member;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/RemoveAllCart")
public class RemoveAllCart extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession ss = request.getSession();
		
		List<String> desc = (List<String>) ss.getAttribute("cDesc");
		List<String> items = (List<String>) ss.getAttribute("cart");
		List<Float> price = (List<Float>) ss.getAttribute("cPrice");
		
		desc.clear();
		items.clear();
		price.clear();
		
		response.sendRedirect("MemberViewCart.jsp");
	}

	
}
