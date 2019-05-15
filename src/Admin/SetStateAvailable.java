package Admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SetStateAvailable
 */
@WebServlet("/SetStateAvailable")
public class SetStateAvailable extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SetStateAvailable() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String hospital = request.getParameter("param1");
		String time = request.getParameter("param2");
		
		AppointmentDao.updateStatusAvilable(time, hospital);
		response.sendRedirect("ItemDetails.jsp");
	}

}
