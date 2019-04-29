package Admin;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/AddItem")
public class AddItem extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		String speciality = request.getParameter("speciality");
		String description = request.getParameter("description");
		Float price = Float.parseFloat(request.getParameter("price"));
		String img = request.getParameter("img");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		Item i = new Item();
		
		i.setName(name);
		i.setDescription(description);
		i.setPrice(price);
		i.setImg(img);
		i.setUsername(username);
		i.setPassword(password);
		i.setSpeciality(speciality);
		
		//Assigning values to the newly created item object
		
		int status = ItemDao.addItem(i);
		
		if(status > 0) {
			response.sendRedirect("AWelcome.jsp");
			out.print("<p>Record saved successfully!</p>");
			
		}
		else {
			response.sendRedirect("AWelcome.jsp");
			out.println("Sorry! unable to save record");  
		}
		
		out.close();
		
	}

}
