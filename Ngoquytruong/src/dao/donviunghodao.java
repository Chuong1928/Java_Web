package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.donviunghobean;
import bean.dotnhanunghobean;

public class donviunghodao {
	DungChung dc=new DungChung();
	public ArrayList<donviunghobean> get_from_data()throws Exception{
		ArrayList<donviunghobean> ds=new ArrayList<donviunghobean>();
		dc.KetNoi();
		String sql="SELECT * FROM dbo.DON_VI_UNG_HO";
		PreparedStatement cmd=dc.cn.prepareStatement(sql);
		ResultSet rs=cmd.executeQuery();
		while(rs.next()) {
			String MaDVUH=rs.getString("MaDVUH");
			String HoTen=rs.getString("HoTenNguoiDaiDien");
			donviunghobean dvuh = new donviunghobean(MaDVUH, HoTen);
			ds.add(dvuh);
		}rs.close();dc.cn.close();
		return ds;
	}
}
