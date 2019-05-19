package Admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DeleteAppointment
 */
@WebServlet("/DeleteAppointment")
public class DeleteAppointment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteAppointment() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String hospital = request.getParameter("hospital");
		String time = request.getParameter("time");
		
		AppointmentDao n = new AppointmentDao();
		n.delete(hospital, time);
		
		response.sendRedirect("DoctorHome.jsp");
	}


}
