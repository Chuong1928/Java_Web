package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.dotnhanunghobean;

public class dotnhanunghodao {
	DungChung dc=new DungChung();
	public ArrayList<dotnhanunghobean> get_from_data()throws Exception{
		ArrayList<dotnhanunghobean> ds=new ArrayList<dotnhanunghobean>();
		dc.KetNoi();
		String sql="SELECT * FROM DOT_NHAN_UNG_HO LEFT JOIN CHI_TIET_NHAN_UNG_HO ON CHI_TIET_NHAN_UNG_HO.MaDotNhanUngHo "
				+ "= DOT_NHAN_UNG_HO.MaDotNhanUngHo";
		PreparedStatement cmd=dc.cn.prepareStatement(sql);
		ResultSet rs=cmd.executeQuery();
		while(rs.next()) {
			String Madotnhanungho=rs.getString("MaDotNhanUngHo");
			String MaHoDan=rs.getString("MaHoDan");
			String NgayNhanUngHo=rs.getString("NgayNhanUngHo");
			String HinhThucNhanUngHo=rs.getString("HinhThucNhanUngHo");
			String SoLuongNhanUngHo=rs.getString("SoLuongNhanUngHo");
			String DonViTinh= rs.getString("DonViTinh");
				
			dotnhanunghobean mh= new dotnhanunghobean(Madotnhanungho, MaHoDan, NgayNhanUngHo, HinhThucNhanUngHo, SoLuongNhanUngHo, DonViTinh);
			ds.add(mh);
		}rs.close();dc.cn.close();
		return ds;
	}
	
	public int XoaDotNhanUngHo(String MaDotNhanUngHo) throws Exception {
		dc.KetNoi();
		String sql="DELETE FROM DOT_NHAN_UNG_HO where MaDotNhanUngHo=?";
		try {
			PreparedStatement cmd=dc.cn.prepareStatement(sql);
			cmd.setString(1, MaDotNhanUngHo);
			System.out.println(sql);
			return cmd.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return 0;
		}
	}
	public int XoaChiTietDotNhanUngHo(String MaDotNhanUngHo) throws Exception {
		dc.KetNoi();
		String sql="DELETE FROM CHI_TIET_NHAN_UNG_HO where MaDotNhanUngHo=?";
		try {
			PreparedStatement cmd=dc.cn.prepareStatement(sql);
			cmd.setString(1, MaDotNhanUngHo);
			System.out.println(sql);
			return cmd.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return 0;
		}
	}
}
