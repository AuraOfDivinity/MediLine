package Admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ItemLogin
 */
@WebServlet("/ItemLogin")
public class ItemLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ItemLogin() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname = request.getParameter("uname");
		String pass = request.getParameter("pass");
		
		if(ItemDao.checkCredentials(uname, pass)) {
			HttpSession session = request.getSession();
			session.setAttribute("username", uname);
			session.setAttribute("LoggedInAs", "Item");
			
			response.sendRedirect("DoctorHome.jsp");
			Item i = ItemDao.getItemByUsername(uname);
			ItemDao.setPreparedItem(i);
		}
		
		else {
			response.sendRedirect("DoctorLogin.jsp");
		}
	}

}
