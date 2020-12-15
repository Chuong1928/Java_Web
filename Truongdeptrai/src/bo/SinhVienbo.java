package bo;

import java.util.ArrayList;

import bean.Sinhvienbean;
import dao.SinhVienDAO;

public class SinhVienbo {
	SinhVienDAO sv=new SinhVienDAO();
	ArrayList<Sinhvienbean> ds;
	public ArrayList<Sinhvienbean> get_from_dao(){
		try {
			return sv.get_from_data();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}
	public ArrayList<Sinhvienbean> TimKiem(String Masv){
		ArrayList<Sinhvienbean> dstk=new ArrayList<Sinhvienbean>();
		for(Sinhvienbean d:ds) {
			if(d.getID().trim().toLowerCase().equalsIgnoreCase(Masv)) {
				dstk.add(d);
			}
		}
		return dstk;
	}
	
	public ArrayList<Sinhvienbean> TimKiemTheoTen(String TenSV){
		ArrayList<Sinhvienbean> dstk=new ArrayList<Sinhvienbean>();
		for(Sinhvienbean d:ds) {
			if((d.getFirstName()+d.getLastName()).trim().toLowerCase().contains(TenSV)) {
				dstk.add(d);
			}
		}
		return dstk;
	}
}
