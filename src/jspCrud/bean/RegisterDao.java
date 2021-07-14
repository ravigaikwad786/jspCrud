package jspCrud.bean;

import java.sql.*;

public class RegisterDao {
	
	public static int register(User u) {
		int status=0;
		try {
			Connection con = ConnectionProvider.getCon();
			PreparedStatement ps=con.prepareStatement("insert into jspcrud values(?,?,?,?)");
			ps.setString(1,u.getUname());
			ps.setString(2,u.getLname());
			ps.setString(3,u.getEmail());
			ps.setString(4,u.getPass());
			
			status = ps.executeUpdate();
			
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		return status;
	}

}
