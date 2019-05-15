package Member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Admin.Item;
import Admin.ItemDao;

/**
 * Servlet implementation class RedirectItem
 */
@WebServlet("/RedirectItem")
public class RedirectItem extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("IN THE REDIRECT ITEM AAAAAAAAAAAAA");
		String prepareItemName = request.getParameter("param1");
		
		HttpSession session = request.getSession();
		
		
		Item i = ItemDao.getItem(prepareItemName);
		ItemDao.setPreparedItem(i);
		session.setAttribute("doctorName", i.getUsername());
		
		
		
		response.sendRedirect("ItemDetails.jsp");
	}

}
