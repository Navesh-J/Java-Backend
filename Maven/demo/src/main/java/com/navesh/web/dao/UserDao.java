package com.navesh.web.dao;

import com.navesh.web.model.User;
import java.sql.*;

public class UserDao {
	public User getUser(int uid) {
		User u = new User();
		u.setUid(101);
		u.setUname("Navesh");
		u.setTech("Java");
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/users","root","navesh");
			Statement st=con.createStatement();
			ResultSet rs = st.executeQuery("select * from login where uid="+uid);
			if(rs.next()) {
				u.setUid(rs.getInt("uid"));
				u.setUname(rs.getString("uname"));
				u.setTech(rs.getString("tech"));
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		
		return u;
	}
}
