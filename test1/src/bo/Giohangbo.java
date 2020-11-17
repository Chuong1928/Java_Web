package bo;

import java.util.ArrayList;

import bean.Giohangbean;

public class Giohangbo {
	public ArrayList<Giohangbean> ds =new ArrayList<Giohangbean>();
	public void ThemGH(String masach,String tensach,String tacgia,String url_anh,double gia,double soluong) {
		for(Giohangbean ghb:ds) {
			if(ghb.getMasach().toLowerCase().trim().equalsIgnoreCase(masach.toLowerCase().trim())) {
				ghb.setSoluong(ghb.getSoluong()+soluong);
				return;
			}
		}
		Giohangbean gh=new Giohangbean(masach,tensach,tacgia,url_anh,gia,soluong);
		ds.add(gh);
	}
	public void Del_elemen_from_cart(String masach) {
		for(Giohangbean ghb:ds) {
			if(ghb.getMasach().equalsIgnoreCase(masach)) {
				ds.remove(ghb);
				break;
			}
		}
	}
	public void Edit_Amount(String masach,int soluongmoi) {
		//Giohangbean gh=new Giohangbean();
		for(Giohangbean ghb:ds ) {
			if(ghb.getMasach().equalsIgnoreCase(masach)) {
				ghb.setSoluong((double)soluongmoi);
				return;
			}
		}
	}
	public int Sum_cart() {
		int sl=0;
		for(Giohangbean ghb:ds) {
			sl+=1;
		}
		return sl;
	}
}
