package Admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SetStateConfirm
 */
@WebServlet("/SetStateConfirm")
public class SetStateConfirm extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public SetStateConfirm() {
        super();

    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String hospital = request.getParameter("param1");
		String time = request.getParameter("param2");
		
		AppointmentDao.updateStatusConfirmed(time, hospital);
		
		response.sendRedirect("DoctorHome.jsp");
	}

}
