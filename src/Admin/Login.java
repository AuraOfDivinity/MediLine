package Admin;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jdbc.LoginDao;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Login() {
        super();
        
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uname = request.getParameter("uname");
		String pass = request.getParameter("pass");
		
		LoginDao dao = new LoginDao();
		
		if(dao.checkCredentials(uname, pass)) {
			HttpSession session = request.getSession();
			session.setAttribute("username", uname);
			session.setAttribute("LoggedInAs", "Admin");
			response.sendRedirect("AWelcome.jsp");
		}
		
		else {
			response.sendRedirect("ALogin.jsp");
		}
	}

	
}
