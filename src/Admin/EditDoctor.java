package Admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EditDoctor
 */
@WebServlet("/EditDoctor")
public class EditDoctor extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public EditDoctor() {
        super();
       
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("username");
		String speciality = request.getParameter("speciality");
		String description = request.getParameter("description");
		Float price = Float.parseFloat(request.getParameter("price"));
		String img = request.getParameter("img");
		
		Item i = new Item();
		
		i.setUsername(name);
		i.setSpeciality(speciality);
		i.setDescription(description);
		i.setPrice(price);
		i.setImg(img);
		
		ItemDao.editItem(i);
		
		System.out.println("IN EDIT ITEM with"+name);
		response.sendRedirect("DoctorHome.jsp");
	}
}