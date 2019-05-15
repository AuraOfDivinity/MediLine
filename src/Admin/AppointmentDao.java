package Admin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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
			Connection con = AppointmentDao.getConnection();
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

	public static List<Appointment> getAvailAppointments(String doctor) {
		List<Appointment> list = new ArrayList<Appointment>();

		try {
			Connection con = AppointmentDao.getConnection();
			PreparedStatement ps = con
					.prepareStatement("select * from appointments where doctor = ? and state = 'AVAILABLE'");
			ps.setString(1, doctor);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Appointment A = new Appointment();
				A.setHospital(rs.getString(1));
				A.setTime(rs.getString(2));
				A.setPrice(rs.getFloat(3));
				A.setState(rs.getString(5));
				A.setDoctor(rs.getString(6));

				list.add(A);
			}
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	public static void updateStatusConfirmed(String time, String hospital) {
		try {
			Connection con = AppointmentDao.getConnection();
			PreparedStatement ps = con
					.prepareStatement("update appointments set state = 'CONFIRMED' where time = ? and hospital = ?");
			ps.setString(1, time);
			ps.setString(2, hospital);

			ps.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	
	public static void updateStatusAvilable(String time, String hospital) {
		try {
			Connection con = AppointmentDao.getConnection();
			PreparedStatement ps = con
					.prepareStatement("update appointments set state = 'AVAILABLE' where time = ? and hospital = ?");
			ps.setString(1, time);
			ps.setString(2, hospital);

			ps.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public static List<Appointment> getConfAppointments(String doctor) {
		List<Appointment> list = new ArrayList<Appointment>();

		try {
			Connection con = AppointmentDao.getConnection();
			PreparedStatement ps = con
					.prepareStatement("select * from appointments where doctor = ? and state = 'CONFIRMED'");
			ps.setString(1, doctor);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Appointment A = new Appointment();
				A.setHospital(rs.getString(1));
				A.setTime(rs.getString(2));
				A.setPrice(rs.getFloat(3));
				A.setState(rs.getString(5));
				A.setDoctor(rs.getString(6));

				list.add(A);
			}
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	public static void delete(String hospital, String time) {

		try {
			Connection con = AppointmentDao.getConnection();
			PreparedStatement pst = con.prepareStatement("delete from appointments where hospital = ? and time = ?");
			pst.setString(1, hospital);
			pst.setString(2, time);
			pst.executeUpdate();

			con.close();
		} catch (Exception e) {

			e.printStackTrace();
		}

	}

}
