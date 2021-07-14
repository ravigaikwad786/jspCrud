package jspCrud.bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Login {
String name ,pass;

public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

public String getPass() {
	return pass;
}

public void setPass(String pass) {
	this.pass = pass;
}

public boolean checklog() {
	
	boolean status=false;
	try {
	
	Connection con = ConnectionProvider.getCon();
	PreparedStatement ps =con.prepareStatement("select * from jspcrud where Email =? and Password=?");
	ps.setString(1,name);
	ps.setString(2, pass);
	ResultSet rs=ps.executeQuery();
	status=rs.next();
	System.out.println(name);
	System.out.println(pass);
	System.out.println(status);
	}
	catch (Exception e) {
		// TODO: handle exception
		System.out.println(e);
	}
	
	return status;
}


}
