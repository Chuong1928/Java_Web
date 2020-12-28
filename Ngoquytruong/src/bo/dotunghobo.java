package bo;

import java.util.ArrayList;

import bean.dotnhanunghobean;
import bean.dotunghobean;
import dao.dotnhanunghodao;
import dao.dotunghodao;

public class dotunghobo {
	dotunghodao uh=new dotunghodao();
	ArrayList<dotnhanunghobean> ds;
	public ArrayList<dotunghobean> get_from_dao()throws Exception{
		try {
			return uh.get_from_data();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}
	public int ThemDotUngHo(String MaDotUngHo,String MaDVUH,String NgayUngHo) {
		try {
			return uh.ThemDotUngHo(MaDotUngHo, MaDVUH, NgayUngHo);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return 0;
	}
	
	public int ThemChiTietDotUngHo(String MaDotUngHo,String HinhThucUngHo,String SoLuongUngHo,String DonViTinh) {
		try {
			return uh.ThemChiTietDotUngHo(MaDotUngHo, HinhThucUngHo, SoLuongUngHo, DonViTinh);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return 0;
	}
	
	public int UpdateDotUngHo(String MaDotUngHo,String MaDVUH,String NgayUngHo) {
		try {
			return uh.UpdateDotUngHo(MaDotUngHo, MaDVUH, NgayUngHo);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return 0;
	}
	public int UpdateChiTietDotUngHo(String MaDotUngHo,String HinhThucUngHo,String SoLuongUngHo,String DonViTinh) {
		try {
			return uh.UpdateChiTietDotUngHo(MaDotUngHo, HinhThucUngHo, SoLuongUngHo, DonViTinh);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return 0;
	}
	
}
