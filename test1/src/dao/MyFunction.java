package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class MyFunction {
	DungChung dc=new DungChung();
	
	public boolean check_login(String username,String password)throws Exception {
		dc.KetNoi();
		boolean status=false;
		
			String sql="SELECT * FROM KhachHang WHERE tendn=? and pass=?";
			try {
				PreparedStatement cmd=dc.cn.prepareStatement(sql);
				cmd.setString(1, username);
				cmd.setString(2, password);
				ResultSet rs = cmd.executeQuery();
				status=rs.next();
				System.out.println(sql);
				//System.out.println(status);
				
			} catch (Exception e) {
					e.printStackTrace();
			}
		return status;
	}
	public boolean check_makh(String makh)throws Exception {
		dc.KetNoi();
		boolean status=false;
		
			String sql="SELECT * FROM KhachHang WHERE Makh=?";
			try {
				PreparedStatement cmd=dc.cn.prepareStatement(sql);
				cmd.setString(1, makh);
				ResultSet rs = cmd.executeQuery();
				status=rs.next();
				System.out.println(sql);
				//System.out.println(status);
				
			} catch (Exception e) {
					e.printStackTrace();
			}
		return status;
	}	
	public boolean check_tendn(String tendn)throws Exception {
		dc.KetNoi();
		boolean status=false;
		
			String sql="SELECT * FROM KhachHang WHERE tendn=?";
			try {
				PreparedStatement cmd=dc.cn.prepareStatement(sql);
				cmd.setString(1, tendn);
				ResultSet rs = cmd.executeQuery();
				status=rs.next();
				System.out.println(sql);
				//System.out.println(status);
				
			} catch (Exception e) {
					e.printStackTrace();
			}
		return status;
	}
	public int Sign_up(String makh,String hoten,String diachi,String sodth,String email,String tendn,String pass)throws Exception {
		dc.KetNoi();
		String sql="INSERT INTO KhachHang(makh,hoten,diachi,sodt,email,tendn,pass)"
				+ "VALUES(?,?,?,?,?,?,?)";
		try {
			PreparedStatement cmd=dc.cn.prepareStatement(sql);
			cmd.setString(1, makh);
			cmd.setString(2, hoten);
			cmd.setString(3, diachi);
			cmd.setString(4, sodth);
			cmd.setString(5, email);
			cmd.setString(6, tendn);
			cmd.setString(7, pass);
			System.out.println(sql);
			return cmd.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return 0;
		}
		
	}
}
