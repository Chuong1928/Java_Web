package bo;

import java.util.ArrayList;

import bean.mathangbean;
import dao.mathangdao;

public class mathangbo {
	mathangdao sv=new mathangdao();
	ArrayList<mathangbean> ds;
	public ArrayList<mathangbean> get_from_dao()throws Exception{
		try {
			return sv.get_from_data();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}
	public ArrayList<mathangbean> TimKiem(String key){
		ArrayList<mathangbean> dstk=new ArrayList<mathangbean>();
		for(mathangbean d:ds) {
			if(d.getTenhang().trim().toLowerCase().equalsIgnoreCase(key)|| d.getNhacungcap().trim().toLowerCase().equalsIgnoreCase(key)) {
				dstk.add(d);
			}
		}
		return dstk;
	}
	
}
