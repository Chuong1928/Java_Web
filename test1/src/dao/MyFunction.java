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
		dc.KetNoi();
		return status;
		
	}
}
