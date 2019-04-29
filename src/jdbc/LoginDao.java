package jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDao {

	String url = "jdbc:mysql://localhost:3306/portal";
	String username = "root";
	String password = "";
	String sql = "select * from adetails where username =? and password = ? ";

	public boolean checkCredentials(String uname, String pass) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, username, password);
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, uname);
			pst.setString(2, pass);

			ResultSet rs = pst.executeQuery();
			if (rs.next()) {
				return true;
			}

		} catch (Exception e) {

			e.printStackTrace();
		}
		return false;

	}
}
