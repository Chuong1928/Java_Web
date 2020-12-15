package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import bean.mathangbean;

public class mathangdao {
	DungChung dc=new DungChung();
	public ArrayList<mathangbean> get_from_data()throws Exception{
		ArrayList<mathangbean> ds=new ArrayList<mathangbean>();
		dc.KetNoi();
		String sql="select * from ngoquytruong";
		PreparedStatement cmd=dc.cn.prepareStatement(sql);
		ResultSet rs=cmd.executeQuery();
		while(rs.next()) {
			String MaHang=rs.getString("MaHang");
			String TenHang=rs.getString("TenHang");
			String TenNhaCungCap=rs.getString("TenNhaCungCap");
			String SoLuong=rs.getString("SoLuong");
			String Gia=rs.getString("Gia");		
			mathangbean mh =new mathangbean(MaHang, TenHang, TenNhaCungCap, Double.parseDouble(SoLuong), Double.parseDouble(Gia));
			ds.add(mh);
		}rs.close();dc.cn.close();
		return ds;
	}
		
}
