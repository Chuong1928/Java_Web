package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DungChung {
	public Connection cn;
	public void KetNoi() throws Exception {
		//b1: Xac dinh HQTCSDL
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		String url="jdbc:sqlserver://ADMIN:1433;databaseName=QLSVNhom1;user=sa;password=123";
		cn=DriverManager.getConnection(url);
		System.out.println("Da Ket Noi ");
	}
}
