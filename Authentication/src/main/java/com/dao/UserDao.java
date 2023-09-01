package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entities.*;

public class UserDao {

	private Connection conn;
	public UserDao(Connection conn) {
		super();
		this.conn=conn;
		
	}
	
	public boolean userregister(User user) {
		boolean f=false;
		
		try {
			String query="insert into user (name,email,password) values(?,?,?)";
			PreparedStatement ps=conn.prepareStatement(query);
			ps.setString(1, user.getName());
			ps.setString(2, user.getEmail());
			ps.setString(3, user.getPassword());
			
			ps.executeUpdate();
			f=true;
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return f;
	}
	public User getlogin(String email,String password) {
		
		
		User us=null;
		try {
			String q="select * from user where email= ? and password = ? ";
			PreparedStatement pst=conn.prepareStatement(q);
			pst.setString(1, email);
			pst.setString(2, password);
			
			ResultSet rs=pst.executeQuery();
			if(rs.next()) {
				us=new User(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4));
				
				
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		
		return us;
	}
}
