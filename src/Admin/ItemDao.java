package Admin;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ItemDao {
	
	public static Item preparedItem;
	
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

	public static int addItem(Item i) {
		int status = 0;

		try {
			Connection con = ItemDao.getConnection();
			PreparedStatement ps = con
					.prepareStatement("insert into items(name, description, Img_url, price, username, password, specialty) values (?, ?, ?, ?, ?, ?, ?)");

			ps.setString(1, i.getName());
			ps.setString(2, i.getDescription());
			ps.setString(3, i.getImg());
			ps.setFloat(4, i.getPrice());
			ps.setString(5, i.getUsername());
			ps.setString(6, i.getPassword());
			ps.setString(7, i.getSpeciality());

			status = ps.executeUpdate();
			//the executeUpdate function returns the number of affected rows in the database
			con.close();
		} catch (SQLException e) {

			e.printStackTrace();
		}

		return status;
	}

	public static List<Item> getAllItems() {
		List<Item> list = new ArrayList<Item>();

		try {
			Connection con = ItemDao.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from items");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Item I = new Item();
				I.setName(rs.getString(1));
				I.setDescription(rs.getString(2));
				I.setImg(rs.getString(3));
				I.setPrice(rs.getFloat(4));
				I.setSpeciality(rs.getString(8));

				list.add(I);
			}
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}
	
	public static Item getItem(String s) {
		Item I = new Item();
		try {
			Connection con = ItemDao.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from items where name =?");
			ps.setString(1, s);
			ResultSet rs = ps.executeQuery();
			
			rs.next();
			I.setName(rs.getString(1));
			I.setDescription(rs.getString(2));
			I.setImg(rs.getString(3));
			I.setPrice(rs.getFloat(4));
			I.setUsername(rs.getString(6));
			I.setSpeciality(rs.getString(8));
			
						
			con.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return I;
	}
	
	public static void setPreparedItem(Item i) {
		preparedItem = i;
	}
	
	public static Item getPreparedItem() {
		return preparedItem;
	}
	
	
	
	public static void delete(String s) {
		
		try {
			Connection con = ItemDao.getConnection();
			PreparedStatement pst = con.prepareStatement("delete from items where name =?");
			pst.setString(1, s);
			pst.executeUpdate();
			
			con.close();
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
	}
	
	public static boolean checkCredentials(String uname, String pass) {
		try {
			System.out.println("IN CHECKCREDENTIALS Passed in values:"+uname+"    "+pass);
			Connection con = ItemDao.getConnection();
			PreparedStatement pst = con.prepareStatement("select * from items where username =? and password = ?");
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
	
	public static Item getItemByUsername(String s) {
		Item I = new Item();
		try {
			Connection con = ItemDao.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from items where username = ?");
			ps.setString(1, s);
			ResultSet rs = ps.executeQuery();
			
			rs.next();
			I.setName(rs.getString(1));
			I.setDescription(rs.getString(2));
			I.setImg(rs.getString(3));
			I.setPrice(rs.getFloat(4));
			I.setSpeciality(rs.getString(8));
			
			
			con.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return I;
	}
	
	public static void editItem(Item i) {
		try {
			Connection con = ItemDao.getConnection();
			PreparedStatement pst = con.prepareStatement("update items set description = ?, Img_url = ?, price = ?, specialty = ? where username = ?");
			pst.setString(1, i.getDescription());
			pst.setString(2, i.getImg());
			pst.setFloat(3, i.getPrice());
			pst.setString(4, i.getSpeciality());
			pst.setString(5, i.getUsername());
			pst.executeUpdate();
			
			con.close();
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}
}
