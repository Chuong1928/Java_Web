package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.sun.net.httpserver.Authenticator.Result;

import bean.loaibean;
import bean.sachbean;

public class loaidao {
	DungChung dc=new DungChung();
	public ArrayList<loaibean> getloai() throws Exception {
		ArrayList<loaibean> ds=new ArrayList<loaibean>();
//		ds.add(new loaibean("ML01","Loai1"));
//		ds.add(new loaibean("ML02","Loai2"));
//		ds.add(new loaibean("ML03","Loai3"));
		//B1:KET NOI CSDL
			dc.KetNoi();
			//thiet lap cau lenh sql
			String sql="select * from loai";
			PreparedStatement cmd=dc.cn.prepareStatement(sql);
			ResultSet rs=cmd.executeQuery();
			while(rs.next()) {
				String maloai=rs.getString("maloai");
				String tenloai=rs.getString("tenloai");
				loaibean loai=new loaibean(maloai, tenloai);
				ds.add(loai);
			}rs.close();dc.cn.close();
		return ds;
	}
}
