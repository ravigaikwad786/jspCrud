package jspCrud.bean;

import java.sql.Connection;
import java.sql.DriverManager;

import static jspCrud.bean.Provider.*;
public class ConnectionProvider {

	private static Connection con=null;
	
	static {
		try {
			Class.forName(Driver);
			con=DriverManager.getConnection(url, username, password);
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
	}
	
	public static Connection getCon() {
		return con;
	}
	
}
