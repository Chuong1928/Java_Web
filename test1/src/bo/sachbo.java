package bo;

import java.util.ArrayList;

import bean.sachbean;
import dao.sachdao;

public class sachbo {
	
	sachdao s1= new sachdao();
	ArrayList<sachbean> ds;
	ArrayList<sachbean> giohang;
	public ArrayList<sachbean> getsach() {
		try {
			return s1.getsach();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
//	public ArrayList<sachbean> addgiohang(String masach){
//		giohang=s1.getsach(masach);
//		return giohang;
//	}
	public ArrayList<sachbean> TimMa(String maloai){
		ArrayList<sachbean> tam=new ArrayList<sachbean>();
		for(sachbean s:ds) {
			if(s.getMasach().equalsIgnoreCase(maloai))
				tam.add(s);
		}
		return tam;
	}
	public ArrayList<sachbean> TimTen(String key){
		ArrayList<sachbean> tam=new ArrayList<sachbean>();
		for(sachbean s:ds) {
			if(s.getTensach().toLowerCase().contains(key.toLowerCase().trim())
			 ||s.getTacgia().toLowerCase().contains(key.toLowerCase().trim())) 
				tam.add(s);
		}
		return tam;
	}
}