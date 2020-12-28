package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.dotnhanunghobean;
import bean.dotunghobean;

public class dotunghodao {
	DungChung dc=new DungChung();
	public ArrayList<dotunghobean> get_from_data()throws Exception{
		ArrayList<dotunghobean> ds=new ArrayList<dotunghobean>();
		dc.KetNoi();
		String sql="SELECT * FROM dbo.DOT_UNG_HO LEFT JOIN dbo.CHI_TIET_DOT_UNG_HO ON"
				+ " CHI_TIET_DOT_UNG_HO.MaDotUngHo = DOT_UNG_HO.MaDotUngHo";
		PreparedStatement cmd=dc.cn.prepareStatement(sql);
		ResultSet rs=cmd.executeQuery();
		while(rs.next()) {
			String Madotungho=rs.getString("MaDotUngHo");
			String Madonviungho=rs.getString("MaDVUH");
			String Ngayungho=rs.getString("NgayUngHo");
			String HinhThucUngHo=rs.getString("HinhThucUngHo");
			String SoLuongUngHo=rs.getString("SoLuongUngHo");
			String DonViTinh= rs.getString("DonViTinh");
			dotunghobean mh= new dotunghobean(Madotungho, Madonviungho, Ngayungho, HinhThucUngHo, SoLuongUngHo, DonViTinh);
			//dotnhanunghobean mh= new dotnhanunghobean(Madotnhanungho, MaHoDan, NgayNhanUngHo, HinhThucNhanUngHo, SoLuongNhanUngHo, DonViTinh);
			ds.add(mh);
		}rs.close();dc.cn.close();
		return ds;
	}
	
	public int ThemDotUngHo(String MaDotUngHo,String MaDVUH,String NgayUngHo) throws Exception {
		dc.KetNoi();
		String sql="INSERT INTO DOT_UNG_HO(MaDotUngHo,MaDVUH,NgayUngHo)"
				+ "VALUES(?,?,?)";
		System.out.println(sql);
		try {
			PreparedStatement cmd=dc.cn.prepareStatement(sql);
			cmd.setString(1, MaDotUngHo);
			cmd.setString(2, MaDVUH);
			cmd.setString(3, NgayUngHo);
			return cmd.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return 0;
		}
	}
	
	public int ThemChiTietDotUngHo(String MaDotUngHo,String HinhThucUngHo,String SoLuongUngHo,String DonViTinh) throws Exception {
		dc.KetNoi();
		String sql="INSERT INTO CHI_TIET_DOT_UNG_HO(MaDotUngHo,HinhThucUngHo,SoLuongUngHo,DonViTinh)"
				+ "VALUES(?,?,?,?)";
		System.out.println(sql);
		try {
			PreparedStatement cmd=dc.cn.prepareStatement(sql);
			cmd.setString(1, MaDotUngHo);
			cmd.setString(2, HinhThucUngHo);
			cmd.setString(3, SoLuongUngHo);
			cmd.setString(4, DonViTinh);
			return cmd.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return 0;
		}
	}
	
	public int UpdateDotUngHo(String MaDotUngHo,String MaDVUH,String NgayUngHo) throws Exception {
		dc.KetNoi();
		String sql="UPDATE DOT_UNG_HO SET MaDVUH=?,NgayUngHo=? WHERE MaDotUngHo =? ";
		System.out.println(sql);
		try {
			PreparedStatement cmd=dc.cn.prepareStatement(sql);
			
			cmd.setString(1, MaDVUH);
			cmd.setString(2, NgayUngHo);
			cmd.setString(3, MaDotUngHo);
			return cmd.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return 0;
		}
	}
	
	public int UpdateChiTietDotUngHo(String MaDotUngHo,String HinhThucUngHo,String SoLuongUngHo,String DonViTinh) throws Exception {
		dc.KetNoi();
		String sql="UPDATE CHI_TIET_DOT_UNG_HO SET HinhThucUngHo=?,SoLuongUngHo=?,DonViTinh=? WHERE MaDotUngHo =? ";
		System.out.println(sql);
		try {
			PreparedStatement cmd=dc.cn.prepareStatement(sql);
			
			cmd.setString(1, HinhThucUngHo);
			cmd.setString(2, SoLuongUngHo);
			cmd.setString(3, DonViTinh);
			cmd.setString(4, MaDotUngHo);
			return cmd.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return 0;
		}
	}

}
