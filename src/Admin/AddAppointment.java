package Admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddAppointment
 */
@WebServlet("/AddAppointment")
public class AddAppointment extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AddAppointment() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String hospital = request.getParameter("hospital");
		String time = request.getParameter("time");
		String doctor = request.getParameter("doctor");

		Item i = ItemDao.getItemByUsername(doctor);

		float price = i.getPrice();
		String state = "AVAILABLE";

		Appointment a = new Appointment();
		a.setHospital(hospital);
		a.setTime(time);
		a.setDoctor(doctor);
		a.setPrice(price);
		a.setState(state);

		// Assigning values to the newly created item object

		int status = AppointmentDao.addAppointment(a);

		if (status > 0) {
			response.sendRedirect("DoctorHome.jsp");

		} else {
			System.out.println("WTF");

		}
	}

}
