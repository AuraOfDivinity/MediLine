package Admin;

import java.sql.*;
import java.util.*;

public class OrderDao {

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

	public static int addOrder(Order o) {

		int status = 0;

		try {
			Connection con = OrderDao.getConnection();
			PreparedStatement ps = con.prepareStatement("insert into orders(oDescription, oTotal) values (?, ?)");

			ps.setString(1, o.getoDetails());
			ps.setFloat(2, o.getoTotal());

			status = ps.executeUpdate();

			con.close();

		} catch (SQLException e) {

			e.printStackTrace();
		}
		return status;
	}
	
	
	public static List<Order> getAllOrder(){
		
		List <Order> list = new ArrayList<Order>();
		
		try {
			Connection con = ItemDao.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from orders");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Order ord = new Order();
				ord.setoID(rs.getInt(1));
				ord.setoDetails(rs.getString(2));
				ord.setoTotal(rs.getFloat(3));
				list.add(ord);
			}
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

}
