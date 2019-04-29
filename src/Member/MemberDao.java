package Member;

import java.sql.*;

public class MemberDao {
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

	public static int registerMember(Member m) {
		int status = 0;
		try {
			Connection con = MemberDao.getConnection();
			PreparedStatement pst = con
					.prepareStatement("insert into member(Fname, Lname, Username, Password) values(?, ?, ?, ?)");

			pst.setString(1, m.getFname());
			pst.setString(2, m.getLname());
			// pst.setString(3, m.getAddress());
			pst.setString(3, m.getUsername());
			pst.setString(4, m.getPassword());
			
		
			status = pst.executeUpdate();
			
			//the executeUpdate function returns the number of affected rows in the database
			
		} catch (Exception e) {

			e.printStackTrace();
		}

		return status;
	}

	public static boolean checkCredentials(String user, String pass) {
		boolean val = false;
		try {
			Connection con = MemberDao.getConnection();
			PreparedStatement ps;
			ps = con.prepareStatement("select * from member where username= ? and password = ?");
			ps.setString(1, user);
			ps.setString(2, pass);
			
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()) {
				return true;
			}
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		return false;
	}
}
