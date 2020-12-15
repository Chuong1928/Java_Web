package dao;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DungChung {
	public Connection cn;
	public ResultSet getbang(String tb)throws Exception {
		try {
			String sql="select * from sach";
			PreparedStatement cmd=cn.prepareStatement(sql);
			ResultSet rs=cmd.executeQuery();
			System.out.println(sql);
			return rs;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();return null;
		}
	}  
	public void KetNoi() throws Exception {
		//b1: Xac dinh HQTCSDL
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		String url="jdbc:sqlserver://ADMIN:1433;databaseName=Qlsach;user=sa;password=123";
		cn=DriverManager.getConnection(url);
		System.out.println("Da Ket Noi ");
	}
}
