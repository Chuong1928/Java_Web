package dao;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;

public class DungChung {
	public Connection cn;
	public void KetNoi() throws Exception {
		//b1: Xac dinh HQTCSDL
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		String url="jdbc:sqlserver://ADMIN:1433;databaseName=Qlsach;user=sa;password=123";
		cn=DriverManager.getConnection(url);
		System.out.println("Da Ket Noi ");
	}
}