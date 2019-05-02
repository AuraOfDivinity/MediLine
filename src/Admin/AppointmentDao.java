package Admin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class AppointmentDao {

	public static Connection getConnection() {
		Connection con = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/portal", "root", "");
		} catch (Exception e) {

			e.printStackTrace();
		}

		return con;

	}

	public static int addAppointment(Appointment a) {
		int status = 0;

		try {
			Connection con = ItemDao.getConnection();
			PreparedStatement ps = con.prepareStatement(
					"insert into appointments(hospital, time, price, state, doctor) values (?, ?, ?, ?, ?)");

			ps.setString(1, a.getHospital());
			ps.setString(2, a.getTime());
			ps.setFloat(3, a.getPrice());
			ps.setString(4, a.getState());
			ps.setString(5, a.getDoctor());

			status = ps.executeUpdate();
			// the executeUpdate function returns the number of affected rows in the
			// database
			con.close();
		} catch (SQLException e) {

			e.printStackTrace();
		}

		return status;
	}

}
