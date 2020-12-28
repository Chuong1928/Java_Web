package bo;

import java.util.ArrayList;

import bean.dotnhanunghobean;
import dao.dotnhanunghodao;


public class dotnhanunghobo {
	dotnhanunghodao uh=new dotnhanunghodao();
	ArrayList<dotnhanunghobean> ds;
	public ArrayList<dotnhanunghobean> get_from_dao()throws Exception{
		try {
			return uh.get_from_data();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}
	
	public int XoaDotNhanUngHo(String MaDotNhanUngHo) {
		try {
			return uh.XoaDotNhanUngHo(MaDotNhanUngHo);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return 0;
	}
	public int XoaChiTietDotNhanUngHo(String MaDotNhanUngHo) {
		try {
			return uh.XoaChiTietDotNhanUngHo(MaDotNhanUngHo);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return 0;
	}
}
