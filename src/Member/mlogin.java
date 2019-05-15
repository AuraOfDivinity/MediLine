package Member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/mlogin")
public class mlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname = request.getParameter("uname");
		String pass = request.getParameter("pass");
		
		if(MemberDao.checkCredentials(uname, pass)) {
			HttpSession session = request.getSession();
			session.setAttribute("username", uname);
			session.setAttribute("LoggedInAs", "Member");
			response.sendRedirect("MemberWelcome.jsp");
		}
		else {
			response.sendRedirect("Member-Login.jsp");
		}
		
	}

}
