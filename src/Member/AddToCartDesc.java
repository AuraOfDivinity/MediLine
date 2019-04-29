package Member;

import java.io.IOException;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class AddToCartDesc extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession ss = request.getSession();
		List<String> cartDesc = (List<String>) ss.getAttribute("cDesc");
		
		if(cartDesc == null) {
			cartDesc = new ArrayList<String>();
			ss.setAttribute("cDesc", cartDesc);
		}
		
		String newDesc = request.getParameter("param2");
		
		if(newDesc != null) {
			cartDesc.add(newDesc);
		}
		
	}



}
