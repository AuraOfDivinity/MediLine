package jdbc;

import java.sql.*;
import Member.*;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Registration
 */
@WebServlet("/Registration")
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String fname = request.getParameter("Fname");
		String lname = request.getParameter("Lname");
		
		String username = request.getParameter("Username");
		String password = request.getParameter("Password");

		//Creation of a new member object
		Member m = new Member();

		m.setFname(fname);
		m.setLname(lname);
		
		m.setUsername(username);
		m.setPassword(password);

		int status = MemberDao.registerMember(m);

		if (status > 0) {
			response.sendRedirect("Member-Login.jsp");

		} else {
			response.sendRedirect("Registration.jsp");

		}

	}

}
